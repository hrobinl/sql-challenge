#List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no AS "employee number", employees.last_name AS "last name",
	   employees.first_name AS "first name", employees.sex AS "Sex",
	   salaries.salary AS "salary"
FROM employees
	JOIN salaries
	ON (employees.emp_no = salaries.emp_no);