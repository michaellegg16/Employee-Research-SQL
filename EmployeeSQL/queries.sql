-- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no ASC;

-- List employees who were hired in 1986.

SELECT *
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

-- List the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name, and start and end employment dates.
	
SELECT dp.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager dm
JOIN departments dp
ON dm.dept_no = dp.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
	
SELECT d.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp d
JOIN departments dp
ON d.dept_no = dp.dept_no
JOIN employees e
ON d.emp_no = e.emp_no;

-- Some employees are listed multiple times as they have belonged to multiple departments.
-- In the future we would have to decide where or not to keep these duplicates.

-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT d.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp d
JOIN departments dp
ON d.dept_no = dp.dept_no
JOIN employees e
ON d.emp_no = e.emp_no
WHERE d.dept_no IN(
	SELECT dept_no
	FROM departments
	WHERE dept_no = 'd007'
);

-- List all employees in the Sales AND Development departments, including their employee number, last name, first name, and department name.

SELECT d.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp d
JOIN departments dp
ON d.dept_no = dp.dept_no
JOIN employees e
ON d.emp_no = e.emp_no
WHERE d.dept_no IN(
	SELECT dept_no
	FROM departments
	WHERE dept_no = 'd007')
OR d.dept_no IN(
	SELECT dept_no
	FROM departments
	WHERE dept_no = 'd005'
);

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) "Count of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Count of Last Name" DESC;