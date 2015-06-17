DROP TABLE IF EXISTS "genre" CASCADE;
DROP TABLE IF EXISTS "movie" CASCADE;
DROP TABLE IF EXISTS "show" CASCADE;
DROP TABLE IF EXISTS "theater" CASCADE;
DROP TABLE IF EXISTS "price" CASCADE;
DROP TABLE IF EXISTS "seat" CASCADE;
DROP TABLE IF EXISTS "reservation" CASCADE;
DROP TABLE IF EXISTS "user" CASCADE;

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
  username TEXT,
  email TEXT,
  password TEXT,
  credit FLOAT DEFAULT 0.0,
  is_admin BOOLEAN DEFAULT FALSE
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



