-- Database: employeesdb

-- DROP DATABASE employeesdb;

CREATE DATABASE EmployeesDB
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE department (
    depart_id bigserial,
    depart_name varchar(50),
    depart_city varchar(50),
    CONSTRAINT depart_key PRIMARY KEY (depart_id)
);

INSERT INTO department (depart_name, depart_city)
VALUES 	('Tax', 'London'),
		('Marketing', 'Roma'),
		( 'Shipping', 'Tokyo'),
		( 'Sales', 'South San'),
		( 'Finance', 'Sydney'),
		( 'Treasury', 'Oxford');
		
DELETE FROM department

CREATE TABLE roles (
	role_id bigserial,
	role_ varchar(50),	
	CONSTRAINT role_key PRIMARY KEY (role_id)
);

INSERT INTO roles ( role_)
VALUES 	('Manager'),
		('Personal Assistant'),
		('Office Administator'),
		('Sales Assistant'),
		('Worker'),
		('Book Keeper');
		
CREATE TABLE salaries (
    salary_id bigserial,
  	salary_pa money,
    CONSTRAINT salary_key PRIMARY KEY (salary_id)
);

INSERT INTO salaries ( salary_pa)
VALUES 	('24000'),
		('45000'),
		('52000'),
		('60000'),
		('64000'),
		('72000');
		
CREATE TABLE overtime_hours(
    overtime_id bigserial,
    overtime_hours int,
    CONSTRAINT overtime_key PRIMARY KEY (overtime_id)
);

INSERT INTO overtime_hours (overtime_hours)
VALUES 	('52'),
		('60'),
		('67'),
		('70'),
		('75'),
		('80');
	
CREATE TABLE employees (
	emp_id bigserial,
	first_name varchar(50),
	last_name varchar(50),
	gender varchar(50),
	address varchar(50),
	email varchar(50),
	depart_id int REFERENCES department (depart_id) ON DELETE CASCADE,
	role_id int REFERENCES roles (role_id) ON DELETE CASCADE,
	salary_id int REFERENCES salaries (salary_id) ON DELETE CASCADE,
	overtime_id	int REFERENCES overtime_hours (overtime_id) ON DELETE CASCADE,
	 CONSTRAINT emp_key PRIMARY KEY (emp_id)
);
SELECT * FROM department
SELECT * FROM roles
SELECT * FROM salaries
SELECT * FROM overtime_hours

INSERT INTO employees (first_name, last_name, gender, address, email, depart_id, role_id, salary_id, overtime_id )
VALUES 	('Samantha', 'Lee','Female','Charade Rd', 'slee@gmailcom',1,1,1,1),
		('Chloe', 'Bram','Female','Small Str', 'cbram@gmail.com',1,2,2,2),
		('Ben', 'Johnson','Male','Park Rd', 'johnson@gmail.com',1,3,3,3),
		('John', 'Lewis','Male','Bram Rd', 'jlewis@gmail.com',1,4,4,4),
		('Paul', 'Smith','Male','Second Str', 'psmith@gmail.com',1,5,5,5),
		('David', 'Brown','Male','Lewis Rd', 'dbrown@gmail.com',1,6,6,6),
		('Grace', 'Miller','female','St Martins Rd', 'gmiller@gmail.com',2,1,3,4),
		('Selena', 'Lopez','female','Wilson Rd', 'slopez@gmail.com',2,2,3,5),
		('Thomas', 'Martin','Male','Green Rd', 'tmartin@gmail.com',2,3,4,5),
		('Kate', 'Walker','female','Fauna Rd', 'kwalker@gmail.com',2,4,5,6),
		('Robben', 'Baker','female','River Rd', 'rbaker@gmail.com',2,4,5,6),
		('Willow', 'Carter','female','Willows Rd', 'wcarter@gmail.com',2,3,4,6);

SELECT emp.first_name, emp.last_name, emp.gender, emp.address, emp.email,
		dpt.depart_name, dpt.depart_city,
		rol.role_, 
		slry.salary_pa, 
		overtime.overtime_hours
FROM employees emp JOIN department dpt
	ON emp.depart_id = dpt.depart_id
JOIN roles rol
	ON emp.role_id = rol.role_id
JOIN salaries slry
	ON emp.salary_id = slry.salary_id
JOIN overtime_hours overtime
	ON emp.overtime_id = overtime.overtime_id;



SELECT * FROM employees;




