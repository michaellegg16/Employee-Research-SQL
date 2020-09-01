# **Employee-Research-SQL**

### Task

* Data Modeling:
  * Inspect the CSVs and sketch out an ERD (entity relationship diagram) of the tables.
  * Screenshot of digram:

![ERD](https://github.com/michaellegg16/sql-challenge/blob/master/EmployeeSQL/ERD.png)

* Data Engineering:
  * Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
  * Import each CSV file into the corresponding SQL table.
  
* Data Analysis:
  * List the following details of each employee: employee number, last name, first name, gender, and salary.
 
![EmployeesQuery](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/EmployeeQuery.png)
![EmployeesOutput](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/EmployeeOutput.png)

  * List employees who were hired in 1986.
  
![Employees1986Query](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/Employee1986Query.png)
![Employees1986Output](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/Employee1986Output.png)

  * List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
  
![ManagerQuery](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/DepartmentQuery.png)
![ManagerOutput](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/DepartmentOutput.png)

  * List the department of each employee with the following information: employee number, last name, first name, and department name.
  
![EmployeeDeptQuery](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/EmployeeDept.png)
![EmployeeDeptOutput](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/EmployeeDeptOutput.png)

  * List all employees whose first name is "Hercules" and last names begin with "B."
  
![HerculesQuery](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/HerculesQuery.png)
![HerculesOutput](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/HerculesOutput.png)

  * List all employees in the Sales department, including their employee number, last name, first name, and department name.
  
![SalesQuery](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/SalesDeptQuery.png)
![SalesOutput](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/SalesDeptOutput.png)

  * List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
  
![SalesDevQuery](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/SalesDevQuery.png)
![SalesDevOutput](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/SalesDevOutput.png)

  * In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
  
![FrequencyQuery](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/FrequencyQuery.png)
![FrequencyOutput](https://github.com/michaellegg16/sql-challenge/blob/master/Screenshots/FrequencyOutput.png)


#### BONUS ASSIGNMENT

It has start to become clear that the dataset is fake upon analysis. To confirm this hunch, visualize the most common salary ranges for employess and the average salary by title.

* Import the SQL database into Pandas using SQL Alchemy.

![Import](https://github.com/michaellegg16/Employee-Research-SQL/blob/master/Screenshots/SQLAlcImport.PNG)

* Create a histogram for the most common salary ranges.

![SalaryRanges](https://github.com/michaellegg16/Employee-Research-SQL/blob/master/Screenshots/SalaryRanges_.PNG)

* Create a bar chart of the average slary by title.

![AverageSalaries](https://github.com/michaellegg16/Employee-Research-SQL/blob/master/Screenshots/AverageSalaries.PNG)

### Instructions

1. Download that data files and create an empty PostgresSQL database.
1. Create a new database.
1. In the query tool, open the "employees_db.sql" file.
1. Run each query to create the tables.
1. Immediately as the table is created (before creating the next table), refresh the tables list and import the data from the proper location with "Headers" selected and the delimiter set as ",".
1. A select query can be performed on each table to check that the data has been properly imported.
1. Open the "queries.sql" file in the query tool.
1. Run any query to view the desired results.
1. For the bonus section, start a Jupyter Notebook kernal and connect to your postgreSQL server (you must input your password if needed).
1. Make sure that you have SQLAlchemy installed and run each cell to query the database and create the plots.

### Conclusion

Based on this analysis if it somewhat clear that the data provided is fake. Very few employees make over $100K and yet there are supposedly hundreded of thousands of employees at this company. Additionally, the "Senior Staff" and "Staff" have the highest average salaries, but the spread between average salaries by title is reasonably small. Supposedly, your own ID # is '499942' and if you look that up you are a "Technique Leader" making $40K.
