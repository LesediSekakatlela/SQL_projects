-- Database: advanced PostgreSQL

-- DROP DATABASE "advanced PostgreSQL";

CREATE DATABASE "advanced PostgreSQL"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE users (
    name varchar (50),
    email varchar(50),
    last_opened integer
);

INSERT INTO users (name, email, last_opened)
VALUES 	('Bob Smith', 'bob@gmail.com', 65615),
		('Rolf Smith', 'rorlfsmith@gmail.com', 8587597),
		( 'Susan Williams', 'swilliams@gmail.com', 56),
		( 'Anne Pun', 'annepun@gmail.com', 2419200);
		
SELECT * FROM users;