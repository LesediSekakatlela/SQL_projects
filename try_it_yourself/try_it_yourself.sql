--chap1
CREATE TABLE animals (
	id bigserial,
	animal_type varchar(50)
);

insert into animals(animal_type)
values 	('Zebra'),
		('Lion'),
		('Hyena'),
		('Hippo'),
		('Springbok');

select * from animals;

CREATE TABLE animal_specifics(
    animal_type varchar(25),
    age int,
    weight int,
    habitat varchar(25),
    diet varchar(25)
);

insert into animal_specifics (animal_type, age, weight, habitat, diet)
values 	('Zebra',8,90,'Africa','herbivores'),
		('Lion',12,88,'Africa','carnivores'),
		('Hyena',5,35,'Africa','carnivores'),
		('Hippo',8,150,'Africa','herbivores');
		
select * from animal_specifics;

--chap2
CREATE TABLE teachers (
	id bigserial,
	first_name varchar(25),
	last_name varchar(50),
	school varchar(50),
	hire_date date,
	salary numeric
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES 	('Kat', 'Williams', 'Hoerskool Sentraal', '2011-10-30', 36200),
		('Robet', 'Johnson', 'St Micheals School', '1993-05-22', 65000),
		('Samuel', 'Miller', 'St Bernards School', '2005-08-01', 43500),
		('Samantha', 'Jones', 'Jim Fouche School', '2011-10-30', 36200),
		('Gabby', 'Diaz', 'Hoerskool Sentraal', '2005-08-30', 43500),
		('Kathleen', 'Davis', 'St Micheals School', '2010-10-22', 38500);
		
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
ORDER BY school ASC, last_name ASC;

SELECT first_name
FROM teachers
WHERE first_name LIKE 'S%' 
	AND salary < 40000;
	
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Mich%'
ORDER BY hire_date DESC;

--chap3
CREATE TABLE delivery_vehicle (
	vehicle_column varchar(10),
	miles int,
	
);
--chap6
CREATE TABLE us_counties_2000 (
    geo_name varchar(90),              -- County/state name,
    state_us_abbreviation varchar(2),  -- State/U.S. abbreviation
    state_fips varchar(2),             -- State FIPS code
    county_fips varchar(3),            -- County code
    p0010001 integer,                  -- Total population
    p0010002 integer,                  -- Population of one race:
    p0010003 integer,                      -- White Alone
    p0010004 integer,                      -- Black or African American alone
    p0010005 integer,                      -- American Indian and Alaska Native alone
    p0010006 integer,                      -- Asian alone
    p0010007 integer,                      -- Native Hawaiian and Other Pacific Islander alone
    p0010008 integer,                      -- Some Other Race alone
    p0010009 integer,                  -- Population of two or more races
    p0010010 integer,                  -- Population of two races
    p0020002 integer,                  -- Hispanic or Latino
    p0020003 integer                   -- Not Hispanic or Latino:
);

--chap7
CREATE TABLE albums (
	album_id bigserial,
	album_catalog_code varchar(100),
	album_title text,
	album_artist text,
	album_release_date date,
	album_genre varchar(40),
	album_description text
);
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES 	('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
		('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
		('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
		('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
		('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
		('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
		
CREATE TABLE songs (
	song_id bigserial,
	song_title text,
	song_artist text,
	album_id bigint
);

------

		
