DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;


CREATE TABLE titles
(
	title_id VARCHAR(5),
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)	
);

SELECT *
FROM titles;


CREATE TABLE employees
(
 	emp_no INTEGER PRIMARY KEY,
 	emp_title_id VARCHAR(5),
 	birth_date DATE,
 	first_name VARCHAR(20) NOT NULL,
 	last_name VARCHAR(20) NOT NULL,
 	sex VARCHAR(1),
 	hire_date DATE,
 	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
 );

SELECT *
FROM employees;


CREATE TABLE departments
(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(20) NOT NULL
);

SELECT  *
FROM departments ;


CREATE TABLE dept_manager
(
	dept_no VARCHAR(4),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
 
SELECT *
FROM dept_manager ;


CREATE TABLE dept_emp
(
	emp_no INTEGER,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT *
FROM dept_emp

CREATE TABLE salaries
 (
	 emp_no INTEGER PRIMARY KEY,
  	 salary INTEGER NOT NULL,
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );

SELECT *
FROM salaries

