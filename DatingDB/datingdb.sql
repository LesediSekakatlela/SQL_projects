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
	CONSTRAINT check_zip_code_not_zero CHECK (zip_code <= 4 )
);

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
	interest_id int REFERENCES interests (interest_id)
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