-- Creating tables for PH-EmployeeDB
CREATE TABLE departments  (  
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
	
);
--Confirm the tables were created successfully
SELECT * FROM departments;

-- Creating tables for PH-EmployeeDB
Create Table employees (
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);
--Confirm the tables were created successfully
SELECT * FROM employees;

-- Creating tables for PH-EmployeeDB
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),	
    PRIMARY KEY (emp_no, dept_no)
);
--Confirm the tables were created successfully
SELECT * FROM dept_manager;

-- Creating tables for PH-EmployeeDB
CREATE TABLE salaries (
  	emp_no INT NOT NULL,
  	salary INT NOT NULL,
  	from_date DATE NOT NULL,
  	to_date DATE NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
 	PRIMARY KEY (emp_no)
);
--Confirm the tables were created successfully
SELECT * FROM salaries;

-- Creating tables for PH-EmployeeDB
Create Table titles (
	emp_no INT NOT null,
	title VARCHAR(20) NOT null,
	from_date DATE NOT null,
	to_date DATE NOT null,
	FOREIGN KEY  (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);
--Confirm the tables were created successfully
SELECT * FROM titles;
-- Creating tables for PH-EmployeeDB
Create Table Dept_Emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
  	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
--Confirm the tables were created successfully
SELECT * FROM Dept_Emp;
DROP TABLE titles CASCADE;
