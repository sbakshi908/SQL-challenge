select * from dept_employee;

--List the following details of each employee: employee number, last name, first name, sex, and salary.


select employees.employee_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees
	join salaries on (employees.employee_no = salaries.employee_no) limit(30); -- specify  what tables and what columns are you joining


--List first name, last name, and hire date for employees who were hired in 1986.
select employees.first_name, employees.last_name, employees.hire_date from employees
	where employees.hire_date between '1/1/1986' and '12/31/1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.employee_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.employee_no = employees.employee_no;
	

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select * from departments;

SELECT departments.dept_name,  dept_employee.employee_no, employees.first_name, employees.last_name
FROM departments
	JOIN dept_employee ON departments.dept_no = dept_employee.dept_no
		JOIN employees on dept_employee.employee_no = employees.employee_no LIMIT (100);


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
	WHERE employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_employee.employee_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments  
	JOIN dept_employee ON departments.dept_no = dept_employee.dept_no
	JOIN employees on dept_employee.employee_no = employees.employee_no
		WHERE departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_employee.employee_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments  
	JOIN dept_employee ON departments.dept_no = dept_employee.dept_no
	JOIN employees on dept_employee.employee_no = employees.employee_no
		WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT employees.last_name, COUNT(employees.last_name)
FROM employees
	GROUP BY employees.last_name
	ORDER BY employees.count DESC;
