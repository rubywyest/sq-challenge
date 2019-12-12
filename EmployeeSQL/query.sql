-- DATA ANALYSIS -SQL HW

-- 	1. List of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employee AS e
INNER JOIN salary AS s ON
s.emp_no=e.emp_no
LIMIT 20;

-- 	2. List employees who were hired in 1986.
SELECT emp_no, first_name, last_name, hire_date
FROM employee
WHERE hire_date LIKE '1986%';


-- 	3. List the manager of each department with the following information: department number, 
--	   department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dep.dept_no, dep.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM employee AS e
INNER JOIN dept_manager AS dm ON
dm.emp_no=e.emp_no
Inner JOIN department As dep ON
dm.dept_no=dep.dept_no;

-- 	4. List the department of each employee with the following information: employee number, 
--	   last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dep.dept_name
FROM employee AS e
INNER JOIN dept_emp AS d ON
d.emp_no=e.emp_no
INNER JOIN department As dep ON
d.dept_no=dep.dept_no;

--	5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * 
FROM employee
WHERE first_name = 'Hercules' AND Last_name LIKE 'B%';

--	6. List all employees in the Sales department, including their employee number, last name, 
--	first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dep.dept_name
FROM employee AS e
INNER JOIN dept_emp AS d ON
d.emp_no=e.emp_no
INNER JOIN department As dep ON
d.dept_no=dep.dept_no
WHERE dep.dept_name = 'Sales';

--	7. List all employees in the Sales and Development departments, including their employee number,
--	last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dep.dept_name
FROM employee AS e
INNER JOIN dept_emp AS d ON
d.emp_no=e.emp_no
INNER JOIN department As dep ON
d.dept_no=dep.dept_no
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';


--	8. In descending order, list the frequency count of employee last names, i.e., how many employees 
--	share each last name.
SELECT last_name, COUNT(emp_no)
FROM employee 
Group BY last_name
ORDER BY COUNT(emp_no)DESC
limit 10;









