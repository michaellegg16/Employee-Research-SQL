CREATE TABLE departments(
	dept_no char(4) PRIMARY KEY,
	dept_name varchar(40)
);

SELECT * FROM departments;



DROP  TABLE IF EXISTS employees CASCADE;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	birth_date date,
	first_name varchar(40),
	last_name varchar(40),
	gender varchar(20),
	hire_date date
);

SELECT * FROM employees;



DROP TABLE IF EXISTS dept_emp CASCADE;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no char(4),
	from_date date,
	to_date date,
	PRIMARY KEY (emp_no, dept_no)
);

ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
;

SELECT * FROM dept_emp



DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no char(4),
	emp_no INT PRIMARY KEY,
	from_date date,
	to_date date
);

ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
;

SELECT * FROM dept_manager;



DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;



DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
	emp_no INT,
	title varchar(40),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, from_date)
);

SELECT * FROM titles;