DROP TABLE IF EXISTS "genre" CASCADE;
DROP TABLE IF EXISTS "movie" CASCADE;
DROP TABLE IF EXISTS "show" CASCADE;
DROP TABLE IF EXISTS "theater" CASCADE;
DROP TABLE IF EXISTS "price" CASCADE;
DROP TABLE IF EXISTS "seat" CASCADE;
DROP TABLE IF EXISTS "reservation" CASCADE;
DROP TABLE IF EXISTS "user" CASCADE;

DROP VIEW IF EXISTS "current_movies" CASCADE;
DROP VIEW IF EXISTS "movie_genre" CASCADE;
DROP VIEW IF EXISTS "show_theater" CASCADE;
DROP VIEW IF EXISTS "reservation_complete" CASCADE;
DROP VIEW IF EXISTS "theater_size" CASCADE;
DROP VIEW IF EXISTS "seat_status" CASCADE;

CREATE TABLE "genre"
(
  id BIGSERIAL PRIMARY KEY,
	description TEXT NOT NULL
);

CREATE TABLE "theater"
(
  id BIGSERIAL PRIMARY KEY,
  description TEXT
);

CREATE TABLE "price"
(
  id BIGSERIAL PRIMARY KEY,
  kind TEXT NOT NULL,
  amount FLOAT NOT NULL
);

CREATE TABLE "user"
(
  uid BIGSERIAL PRIMARY KEY,
  username TEXT UNIQUE,
  email TEXT UNIQUE,
  password TEXT,
  credit FLOAT DEFAULT 0.0,
  is_admin BOOLEAN DEFAULT FALSE NOT NULL,
  password_reset_token TEXT,
  token_expiration TIMESTAMP
);

CREATE TABLE "movie"
(
	id BIGSERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	genre_id BIGINT NOT NULL,
	trailer_url TEXT NOT NULL,
	duration BIGINT,
	plot TEXT,
	poster_uri TEXT,

  FOREIGN KEY(genre_id) REFERENCES genre(id)
);

CREATE TABLE "show"
(
  -- TOOD: verify this is needed
	id BIGSERIAL NOT NULL UNIQUE,
	movie_id BIGINT NOT NULL,
	theater_id BIGINT NOT NULL,
  date_time TIMESTAMP NOT NULL,

	PRIMARY KEY(movie_id, theater_id, date_time),
  FOREIGN KEY(movie_id) REFERENCES movie(id),
  FOREIGN KEY(theater_id) REFERENCES theater(id)
);

CREATE TABLE "seat"
(
  id BIGINT NOT NULL UNIQUE,
  theater_id BIGINT NOT NULL,
  "row" BIGINT,
  "column" BIGINT,
  exist BOOLEAN DEFAULT TRUE,

  PRIMARY KEY (theater_id, "row", "column"),
  FOREIGN KEY(theater_id) REFERENCES "theater"(id)
);

CREATE TABLE "reservation"
(
	id BIGSERIAL PRIMARY KEY,
	user_id BIGINT NOT NULL,
	show_id BIGINT NOT NULL,
	price_id BIGINT NOT NULL,
  seat_id BIGINT NOT NULL,
	created TIMESTAMP NOT NULL DEFAULT current_timestamp,

  FOREIGN KEY(user_id) REFERENCES "user"(uid),
  FOREIGN KEY(show_id) REFERENCES show(id),
  FOREIGN KEY(price_id) REFERENCES price(id),
  FOREIGN KEY(seat_id) REFERENCES seat(id)
);

CREATE VIEW "reservation_complete" AS
  SELECT
    r.id AS id,
    u.username AS username,
    u.email AS email,
    m.title AS title,
    p.amount AS amount,
    p.kind AS kind,
    "show".date_time AS date_time,
    t.description AS description,
    seat."row" AS "row",
    seat."column" AS "column"
  FROM reservation r JOIN "user" u ON r.user_id = u.uid
  JOIN "show" ON r.show_id = "show".id
  JOIN price p ON r.price_id = p.id
  JOIN seat ON r.seat_id = seat.id
  JOIN theater t ON seat.theater_id = t.id
  JOIN movie m ON m.id = "show".movie_id;

CREATE VIEW "movie_genre" AS
  SELECT
    m.id as id,
    m.title as title,
    g.description as genre,
    m.trailer_url as trailer_url,
    m.duration as duration,
    m.plot as plot,
    m.poster_uri as poster_uri
  FROM
    movie m JOIN genre g ON m.genre_id=g.id;

CREATE VIEW "current_movies" AS
  SELECT
    *
  FROM
    "movie_genre"
  WHERE
    id IN (SELECT DISTINCT movie_id FROM "show" WHERE date_time > current_timestamp);

CREATE VIEW "show_theater" AS
  SELECT
    s.id as id,
    s.date_time as date_time,
    t.description as theater,
    s.movie_id as movie_id
  FROM
    "show" s join theater t on s.theater_id=t.id;

CREATE VIEW "theater_size" AS
  SELECT
    t.id as id,
    t.description as theater,
    max(s."row") as "rows",
    max(s."column") as "columns"
  FROM
    seat s JOIN theater t ON s.theater_id=t.id
  GROUP BY
    t.id;

-- status
-- 0 rotto
-- 1 libero
-- 2 occupato
CREATE VIEW "seat_status" AS
  WITH "seat_show" AS (
    SELECT
      s.id AS "show_id",
      r.id as "reservation_id",
      ss.*
    FROM
      "show" s JOIN theater t ON s.theater_id=t.id
      JOIN "seat" ss ON ss.theater_id=t.id
      LEFT JOIN "reservation" r ON (r.show_id=s.id AND ss.id=r.seat_id)
  )
  SELECT
    s."id",
    s."row",
    s."column",
    s."show_id",
    2 as "status"
  FROM
    "seat_show" s
  WHERE
    s.reservation_id IS NOT NULL
  UNION SELECT
    s."id",
    s."row",
    s."column",
    s."show_id",
    s."exist"::integer as "status"
  FROM
    "seat_show" s
  WHERE
    s.reservation_id IS NULL;
