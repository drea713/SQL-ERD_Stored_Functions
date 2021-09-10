CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	payment DECIMAL(10),
	movie_id INTEGER
	FOREIGN KEY (movie_id)
		REFERENCES movies (movie_id)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(50),
	price DECIMAL(10),
	showday DATE,
	showtime TIME
);


CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	num_of_tickets INTEGER,
	title VARCHAR(50),
	showday DATE,
	showtime TIME,
	movie_id SERIAL,
	customer_id SERIAL
);

CREATE TABLE concessions(
	item_id SERIAL PRIMARY KEY,
	food VARCHAR(50),
	drinks VARCHAR(50),
	price DECIMAL,
	customer_id SERIAL
);

ALTER TABLE movies
ADD COLUMN ticket_id SERIAL;

INSERT INTO "customers"(customer_id, first_name, last_name, payment, movie_id)
VALUES(1, 'Andrea', 'Pirela', 23.00, 1);

SELECT *
FROM "customers";

INSERT INTO "customers"(customer_id, first_name, last_name, payment, movie_id)
VALUES(6, 'Frank', 'Melendez', 10.00, 3);

INSERT INTO "movies"(movie_id, title, price, showday, showtime, ticket_id)
VALUES(1, 'Cruela', '10.00', '09-10-2021', '8:00pm', 12345);

SELECT *
FROM "movies";

INSERT INTO "movies"(movie_id, title, price, showday, showtime, ticket_id)
VALUES(3, 'Once Upon A Time', '10.00', '09-10-2021', '5:00pm', 12347);

INSERT INTO "concessions"(item_id, food, drinks, price, customer_id)
VALUES(6, 'Nachos', 'water', 4.00, 6);

SELECT *
FROM "concessions";

INSERT INTO "tickets"(ticket_id, num_of_tickets, title, showday, showtime, movie_id, customer_id)
VALUES(09871, 1, 'Once Upon A Time', '09-10-2021', '5:00pm', 3, 6);

SELECT *
FROM "tickets";

-- examples to how to use foreign key will redo tables and make edits.
CREATE TABLE example(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	payment DECIMAL(10),
	movie_id INTEGER,
	CONSTRAINT fk_movie
	FOREIGN KEY (movie_id)
		REFERENCES movies(movie_id)
);

CREATE TABLE example2(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	payment DECIMAL(10),
	movie_id INTEGER,
	FOREIGN KEY (movie_id)
		REFERENCES movies(movie_id)
);