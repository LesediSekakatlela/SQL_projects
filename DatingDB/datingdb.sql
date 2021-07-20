-- Database: datingdb

-- DROP DATABASE datingdb;

CREATE DATABASE DatingDB
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TABLE profession(
	prof_id bigserial,
	profession varchar(50),
	CONSTRAINT prof_key PRIMARY KEY (prof_id),
	CONSTRAINT profession_unique UNIQUE (profession)
);

CREATE TABLE zip_code (
	zip_code integer,
	city varchar(50),
	province varchar(50),
	CONSTRAINT zip_code_key PRIMARY KEY (zip_code),
	CONSTRAINT check_zip_code CHECK (zip_code < 10000 )
);

DELETE FROM zip_code;
DROP TABLE zip_code;

CREATE TABLE status (
	status_id bigserial,
	status varchar(50),	
	CONSTRAINT status_key PRIMARY KEY (status_id)
);

CREATE TABLE my_contacts (
	contact_id bigserial,
	last_name varchar(50),
	first_name varchar(50),
	phone int,
	email varchar(50),
	gender varchar(25),
	birthday date,
	prof_id int REFERENCES profession (prof_id),
	zip_code int REFERENCES zip_code(zip_code),
	status_id int REFERENCES status (status_id),
	CONSTRAINT contact_key PRIMARY KEY (contact_id)
);

CREATE TABLE interests(
	interest_id bigserial,
	interest varchar(50),
	CONSTRAINT interest_key PRIMARY KEY (interest_id)	
);

CREATE TABLE interests2(
	interest2_id bigserial,
	interest2 varchar(50),
	CONSTRAINT interest2_key PRIMARY KEY (interest2_id)	
);

CREATE TABLE contact_interest (
	contact_id int REFERENCES my_contacts (contact_id),
	interest_id int REFERENCES interests (interest_id),
	interest2_id int REFERENCES interests2 (interest2_id)
);

CREATE TABLE seeking(
	seeking_id bigserial,
	seeking varchar(50),
	CONSTRAINT seeking_key PRIMARY KEY (seeking_id)	
);

CREATE TABLE contact_seeking (
	contact_id int REFERENCES my_contacts (contact_id),
	seeking_id int REFERENCES seeking (seeking_id)
);

INSERT INTO profession (profession)
VALUES 	('Software Developer'),
		('Public Relations'),
		('Human Resources'),
		('Accounting'),
		('Manufacturing'),
		('Administration'),
		('Purchasing '),
		('Construction'),
		('Medical Assistance'),
		('Dentists'),
		('IT Support '),
		('IT Helpdesk '),
		('Retail Sales'),
		('Marketing'),
		('Airline Pilots'),
		('Shareholders Services');
		
INSERT INTO zip_code (zip_code, city, province )
VALUES 	(1251,'Bhisho','Eastern Cape'),
		(2976,'Bloemfontein','Free State'),
		(3612,'Johannesburg','Gauteng'),
		(2936,'	Pietermaritzburg','KwaZulu-Natal'),
		(2354,'Polokwane','Limpopo'),
		(3125,'Nelspruit','Mpumalanga'),
		(4422,'Mahikeng','North West'),
		(3527,'Kimberley','Northern Cape'),
		(2916,'Cape Town','Western Cape'),
		(5034,'East London','Eastern Cape'),
		(6314,'Welkom','Free State'),
		(1244,'Pretoria','Gauteng'),
		(5217,'Durban','KwaZulu-Natal'),
		(1518,'Louis','Limpopo'),
		(3338,'Bethal','Mpumalanga'),
		(2319,'Brits','North West'),
		(1743,'Springbok','Northern Cape'),
		(2124,'Paarl','Western Cape');
		
INSERT INTO status (status)
VALUES 	('Single'),
		('Divorced'),
		('Married'),
		('Complicated'),
		('Engaged');
		
INSERT INTO interests (interest)
VALUES 	('Travelling'),
		('Cooking'),
		('Gardening'),
		('Dancing'),
		('Hacker'),
		('Judo'),
		('Dominoes'),
		('Cribbage'),
		('Acting'),
		('Arts'),
		('Writting'),
		('Sports'),
		('Blogging'),
		('Chess'),
		('Video Games');
		
INSERT INTO interests2 (interest2)
VALUES 	('Reading'),
		('Babysitting'),
		('Beatboxing'),
		('Candy Making'),
		('Building'),
		('Cleaning'),
		('Collecting'),
		('Diving'),
		('Fashion'),
		('Hacking'),
		('Inventing'),
		('Knot Tying'),
		('Makeup'),
		('Music'),
		('Painting');


INSERT INTO seeking (seeking)
VALUES 	('Male'),
		('Female'),
		('Other');
				
SELECT * FROM profession		
SELECT * FROM zip_code
SELECT * FROM status
SELECT * FROM my_contacts
SELECT * FROM interests
SELECT * FROM interests2
SELECT * FROM seeking
