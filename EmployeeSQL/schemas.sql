-- Drop table if exists
DROP TABLE employees;

--Titles Table
CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title)
);

--Employee Table
CREATE TABLE employees (
	emp_no VARCHAR, PRIMARY KEY
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
	FOREIGN KEY (emp_title) REFERENCES titles.title_id
	PRIMARY KEY
);

--Departments Table
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no) 
);

--Dept Manager Table
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

--_Dep Emp Table
CREATE TABLE dept_emp (
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
	PRIMARY KEY (emp_no, dept_no)
);

--Salary Table
CREATE TABLE salaries (
	emp_no VARCHAR,
	salary INT
);

-- View table columns and datatypes
SELECT * FROM titles;

--Junction Table