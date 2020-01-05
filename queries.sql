--Query to get employee number, last name, first name, gender, and salary by 
--creating a inner join between employee and salaries tables
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;

--Query to get employee number, last name, first name and hire date
--to find all employees hired in 1986
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE hire_date between '1986-01-01' and '1986-12-31';


--Query to department manager, department name, employee number, start and end dates, last
--and first name by joining department manager, employees, and departments tables
SELECT d.dept_no, d.dept_name, dm.emp_no, dm.from_date, dm.end_date, e.last_name, e.first_name
FROM dept_manager as dm
INNER JOIN employees AS e ON
e.emp_no = dm.emp_no
INNER JOIN departments AS d ON
d.dept_no = dm.dept_no;


--Query to find employee number, last name, first name, and department name
--by joining employee, department, and department employee tables
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no;


--Query to find all employees with first name Hercules and last name starting with 
--B from the employee table
SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';


--Query all employees numbers, last name, first name, and department name that 
--are in the sales deparment.  Have to join employees, department employee, 
--and departments table
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';


--Query all employees numbers, last name, first name, and department name that 
--are in the sales or development deparment.  Have to join employees, department employee, 
--and departments table
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR  d.dept_name = 'Development';



--Query last name and then count the total of rows in last name group by
--unique last name from employee table
SELECT e.last_name, COUNT(*) AS frequency
FROM employees AS e
GROUP BY e.last_name
ORDER BY frequency DESC;

