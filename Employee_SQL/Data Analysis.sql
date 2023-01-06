--Question 1 
SELECT employees.emp_no AS "Employee No.", last_name AS "Last Name", first_name AS "First Name", sex AS "Sex", salary AS "Salary"
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--Question 2
SELECT first_name AS "First Name", last_name AS "Last Name", hire_date AS "Hire Date"
FROM employees
WHERE to_char(hire_date :: DATE, 'YYYY') = '1986'
ORDER BY hire_date;

--Question 3
SELECT dept_manager.emp_no AS "Employee No.", last_name AS "Last Name", first_name AS "First Name", dept_name AS "Department Name", departments.dept_no AS "Department No."  
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no;

--Question 4
SELECT dept_emp.emp_no AS "Employee No.", last_name AS "Last Name", first_name AS "First Name", departments.dept_name AS "Department Name", dept_emp.dept_no AS "Department No."
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no 
ORDER BY dept_name;

--Question 5
SELECT first_name AS "First Name", last_name AS "Last Name", sex AS "Sex"
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6
SELECT employees.emp_no AS "Employee No.", last_name AS "Last Name", first_name AS "First Name", dept_name AS "Department Name"
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no LIKE 'd007';

--Question 7 
SELECT employees.emp_no AS "Employee No.", last_name AS "Last Name", first_name AS "First Name", dept_name AS "Department Name"
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007' or departments.dept_no = 'd005';

---Question 8
SELECT last_name AS "Last Name", COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;
