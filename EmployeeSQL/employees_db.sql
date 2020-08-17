-- Creat departments table
CREATE TABLE departments(
	dept_no char(4) PRIMARY KEY,
	dept_name varchar(40)
);

-- Refresh tables and import CSV file.
-- Select all from the table to check that it imported properly.
SELECT * FROM departments;


-- Drop employees table if it exists already.
DROP TABLE IF EXISTS employees CASCADE;

-- Create employees table with the employee number as the primary key.
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	birth_date date,
	first_name varchar(40),
	last_name varchar(40),
	gender varchar(20),
	hire_date date
);

-- Refresh tables and import CSV file.
-- Select all from the table to check that it imported properly.
SELECT * FROM employees;


-- Drop dept_emp table if it exists already.
DROP TABLE IF EXISTS dept_emp CASCADE;

-- Create dept_emp table with the employee number and department number as primary keys.
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no char(4),
	from_date date,
	to_date date,
	PRIMARY KEY (emp_no, dept_no)
);
-- Refresh tables and import CSV file.

-- Alter the dept_emp table so that the employee number is a foreign key that references the employees table
-- And department number is a foreign key that references the departments table.
ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
;

-- Select all from the table to check that it imported properly.
SELECT * FROM dept_emp


-- Drop deptartment manager table if it already exists.
DROP TABLE IF EXISTS dept_manager;

-- Create department manager table with employee number as the primary key.
CREATE TABLE dept_manager(
	dept_no char(4),
	emp_no INT PRIMARY KEY,
	from_date date,
	to_date date
);
-- Refresh tables and import CSV file.

-- Alter the department manager table so that the department number is a foreign key that refernces the departments table
-- And the employee number is a foreign key that references the employees table.
ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
;

-- Select all from the table to check that it imported properly.
SELECT * FROM dept_manager;


-- Drop that salaries table if it already exists.
DROP TABLE IF EXISTS salaries;

-- Create the salaries table with the employee number as the primary key.
-- The employee number is also a foreign key that refernces the employees table.
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Refresh tables and import CSV file.

-- Select all from the table to check that it imported properly.
SELECT * FROM salaries;


-- Drop the titles table if it already exists.
DROP TABLE IF EXISTS titles;

-- Create the titles table with the employee number and from_date as primary keys.
-- The employee number is also a foreign key that references that employees table.
CREATE TABLE titles(
	emp_no INT,
	title varchar(40),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, from_date)
);
-- Refresh tables and import CSV file.

-- Select all from the table to check that it imported properly.
SELECT * FROM titles;