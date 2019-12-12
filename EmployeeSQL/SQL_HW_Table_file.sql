CREATE TABLE employee (
	emp_no VARCHAR PRIMARY KEY,
	birth_date VARCHAR, 
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE department (
	dept_no  VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);


CREATE TABLE dept_emp (
	emp_no VARCHAR NOT NULL REFERENCES Employee(emp_no),
	dept_no VARCHAR REFERENCES Department(dept_no),
	from_date VARCHAR,
	to_date VARCHAR
);


CREATE TABLE dept_Manager (
	dept_no SERIAL PRIMARY KEY REFERENCES Department(dept_no),
	emp_no VARVCHAR NOT NUll REFERENCES Employee(emp_no),
	from_date VARCHAR,
	to_date VARCHAR
);

CREATE TABLE salary (
	emp_no VARCHAR NOT NULL REFERENCES Employee(emp_no),
	salary integer NOT NULL,
	from_date VARCHAR,
	to_date VARCHAR
);


CREATE TABLE Title (
	emp_no VARCHAR NOT NULL REFERENCES Employee(emp_no),
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);