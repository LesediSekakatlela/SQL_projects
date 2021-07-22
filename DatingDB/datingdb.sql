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

CREATE TABLE contact_interest (
	contact_id int REFERENCES my_contacts (contact_id),
	interest_id int REFERENCES interests (interest_id),
	interest2_id int REFERENCES interests (interest_id)
);

DROP TABLE interests CASCADE 
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
				
INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
VALUES 	('Smith','Mila','0675553211','msmith@gmail.com','Male','1985-01-10',1,1251,1),
		('Johnson','Mia','0682226543','johnson@gmail.com','Female','1999-07-20',2,2976,2),
		('Williams','Hunter','0693339876','hwilliams@gmail.com','Male','2000-03-15',3,3612,3),
		('Brown','Lucas','0657771234','brown@gmail.com','Male','1985-07-23',4,2936,4),
		('Jones','Paker','0648889854','pjones@gmail.com','Male','1975-11-25',5,2354,5),
		('Davis','Alice','0664588231','davis@gmail.com','Female','1988-02-02',6,3125,4),
		('Lopez','Sky','0630056782','lopez@gmail.com','Female','1978-08-19',7,4422,2),
		('Wilson','Logan','0624446670','lwilson@gmail.com','Male','1993-01-25',8,3527,1),
		('Thomas','Molly','0615678942','thomas@gmail.com','Female','2000-01-09',9,2916,5),
		('Taylor','Asher','0816587297','taylor@gmail.com','Male','1992-04-27',10,1244,4),
		('Martin','Leo','0876305618','martinl@gmail.com','Male','1994-05-11',11,2124,2),
		('Jackson','Noah','0721941635','jnoah@gmail.com','Male','1995-06-12',12,3338,3),
		('Lee','Willow','0795674432','wlee@gmail.com','Female','1997-07-13',13,1743,1),
		('White','Miles','0764231978','wmiles@gmail.com','Male','2001-10-10',14,6314,1),
		('Lewis','Bryan','0825556234','blewis@gmail.com','Male','2001-01-10',15,5034,2),
		('Walker','Paul','0789995425','walker@gmail.com','Male','1976-09-30',16,2319,5),
		('Queens','Olivia','0834446672','queens@gmail.com','Female','1999-11-01',12,1518,2);	
--DROP TABLE my_contacts CASCADE
--DELETE FROM my_contacts;

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
		('Swimming'),
		('Cart Racing'),
		('Video Games');
		
INSERT INTO contact_interest(contact_id,interest_id,interest2_id)
VALUES 	(1,1,2),
		(2,2,4),
		(3,3,6),
		(4,4,8),
		(5,5,10),
		(6,6,12),
		(7,7,14),
		(8,8,16),
		(9,9,11),
		(10,10,13),
		(11,11,15),
		(12,12,7),
		(13,13,9),
		(14,14,11),
		(15,15,3),
		(16,16,5),
		(17,17,1);
--DROP TABLE contact_interest

INSERT INTO seeking (seeking)
VALUES 	('Male'),
		('Female'),
		('Other');	
		

SELECT * FROM profession		
SELECT * FROM zip_code
SELECT * FROM status
SELECT * FROM my_contacts
SELECT * FROM interests
SELECT * FROM contact_interest
SELECT * FROM seeking
