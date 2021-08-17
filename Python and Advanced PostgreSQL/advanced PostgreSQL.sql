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
	
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);

INSERT INTO users (id ,name, email)
VALUES 	(1,'Bob Smith', 'bob@gmail.com'),
		(2,'Rolf Smith', 'rorlfsmith@gmail.com'),
		(3,'Susan Williams', 'swilliams@gmail.com'),
		(4,'Anne Pun', 'annepun@gmail.com');


CREATE TABLE emails (id INTEGER PRIMARY KEY, content TEXT);

INSERT INTO emails (id, content)
VALUES	(1, 'This is a test e-mail'),
		(2, 'Another test e-mail'),
		(3, 'We should really write longer e-mails');


CREATE TABLE email_opens(
	email_id INTEGER,
	user_id INTEGER,
	opened_time INTEGER,
	PRIMARY KEY (email_id, user_id),
	FOREIGN KEY (email_id) REFERENCES emails(id),
	FOREIGN KEY (user_id) REFERENCES users(id) 
);

INSERT INTO email_opens(email_id, user_id, opened_time)
VALUES	(3, 2, 1572393600),
		(2, 2, 1572220800),
		(1, 3, 1572393600),
		(2, 3, 1572480000),
		(1, 4, 1572480000),
		(1, 1, 1572393600);


CREATE OR REPLACE FUNCTION opened_ago(email_open_row email_opens) RETURNS INTEGER AS $$
	SELECT cast(extract(epoch FROM CURRENT_TIMESTAMP) AS INTEGER) - email_open_row.opened_time AS email_opened_ago;
$$ LANGUAGE SQL;


CREATE PROCEDURE insert_test_data() AS $$
BEGIN
	CREATE TABLE test_data (id INTEGER, name TEXT);
	INSERT INTO test_data VALUES (1, 'Bob');
	INSERT INTO test_data VALUES (2, 'Rolf');
	COMMIT;
END;
$$ LANGUAGE plpgsql;

CALL insert_test_data();


SELECT * FROM test_data;
SELECT *, opened_ago(email_opens) FROM email_opens;

SELECT *, opened_ago(email_opens) FROM users
JOIN email_opens ON users.id = email_opens.user_id
WHERE opened_ago(email_opens) < 70000000;

SELECT * FROM users;
SELECT * FROM emails;
SELECT * FROM email_opens;
SELECT * FROM email_opens JOIN users ON email_opens.user_id = users.id;

