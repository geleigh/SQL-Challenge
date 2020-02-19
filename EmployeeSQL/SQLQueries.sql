-- Data Analysis --
-- All my SQL Queries -- 

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
	 FROM employees as e
	 INNER JOIN salaries as s
	 ON e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.

SELECT e.first_name, e.last_name, e.hire_date
	FROM employees as e
	WHERE e.hire_date LIKE '1986%';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
	FROM dept_manager as m
	INNER JOIN departments as d
	ON m.dept_no = d.dept_no
	INNER JOIN employees as e
	ON m.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT demp.emp_no, e.last_name, e.first_name, d.dept_name
	FROM dept_emp as demp
	INNER JOIN departments as d
	ON demp.dept_no = d.dept_no
	INNER JOIN employees as e
	ON de.emp_no = e.emp_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name
	FROM employees as e
	WHERE e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, dept_name
	from employee_depts as e
	WHERE dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, dept_name
	from employee_depts as e
	WHERE dept_name = 'Sales'
	OR dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

  
SELECT e.last_name, count(e.last_name) as Count
	from employees as e
	group by e.last_name
	order by Count DESC;