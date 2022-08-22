CREATE TABLE author (
	id serial PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);

insert into author (first_name, last_name, email, birthday) values ('Rickard', 'Vigar', 'rvigar0@wikia.com', '1953-01-07');

UPDATE author
SET first_name = 'Joe',
	last_name = 'Mama',
	email = 'joe@mama.com',
	birthday ='1967-03-25'
WHERE id = 10;

DELETE FROM author
WHERE id = 6
RETURNING *;
