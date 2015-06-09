CREATE TABLE genre
(
	ID_genre INTEGER PRIMARY KEY,
	description TEXT
);

CREATE TABLE film
(
	ID_film INTEGER PRIMARY KEY,
	title TEXT,
	ID_genre INTEGER,
	url_trailer TEXT,
	duration INTEGER,
	plot TEXT,
	uri_poster TEXT,
	FOREIGN KEY (ID_genre) REFERENCES genre(ID_genre)
);

CREATE TABLE show
(
	ID_show INTEGER NOT NULL UNIQUE,
	ID_film INTEGER,
	date_time TIMESTAMP,
	ID_room INTEGER,
	PRIMARY KEY(ID_film, date_time, ID_room),
	FOREIGN KEY (ID_film) REFERENCES film(ID_film),
	FOREIGN KEY (ID_room) REFERENCES room(ID_room)
);

CREATE TABLE room
(
	ID_room INTEGER PRIMARY KEY,
);

CREATE TABLE price
(
	ID_price INTEGER PRIMARY KEY,
	kind TEXT,
	prezzo DOUBLE
);

CREATE TABLE reservation
(
	ID_reservation INTEGER PRIMARY KEY,
	ID_user INTEGER,
	ID_show INTEGER,
	ID_price INTEGER,
	ID_seat INTEGER,
	date_time_operarion TIMESTAMP,
	FOREIGN KEY (ID_user) REFERENCES user(ID_user),
	FOREIGN KEY (ID_show) REFERENCES show(ID_show),
	FOREIGN KEY (ID_price) REFERENCES price(ID_price),
	FOREIGN KEY (ID_seat) REFERENCES seat(ID_seat)
);

CREATE TABLE seat
(
	ID_seat INTEGER NOT NULL UNIQUE,
	ID_room INTEGER,
	row INTEGER,
	column INTEGER,
	exist BOOLEAN,
	PRIMARY KEY (ID_room, row, column),
	FOREIGN KEY (ID_room) REFERENCES seat(ID_room)
);

CREATE TABLE user
(
	ID_user INTEGER PRIMARY KEY,
	username TEXT,
	email TEXT,
	password TEXT,
	credit DOUBLE,
	ID_role INTEGER,
	FOREIGN KEY (ID_role) REFERENCES role(ID_role)
);

CREATE TABLE role
(
	ID_role INTEGER PRIMARY KEY,
	role TEXT
);
