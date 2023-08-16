--- Create a list with employee details including: employee number, last name, first name, sex and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

--- Create a list for 1986 employee hire date including: first name, last name and hire date
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 1986;

--- Create a list including: manager info and department info
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

--- Create a list including: department number and employee details
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

--- Create a list of employees: names Hercules and with last name starting with a 'B'
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--- Create a list of employees in the: "Sales department"
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--- Create a list of employees in both: "Sales" and "Development" departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--- Create a list of grouped last names to visualize the frequency
SELECT last_name, COUNT(*) as name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;