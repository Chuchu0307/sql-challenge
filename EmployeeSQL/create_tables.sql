-- departments table
CREATE TABLE departments(
    dept_no VARCHAR(15) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

-- dept_emp table 
Create Table dept_emp(
    emp_no Integer Not Null,
    dept_no VARCHAR(9) Not null
);

-- dept_manager table 
Create Table dept_manager(
     dept_no Varchar Not Null,
     emp_no INT Not null
);

-- Create employees table
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id Varchar Not Null,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

-- Create salaries table
create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

-- Create titles table
create table titles (
	title_id Varchar PRIMARY KEY NOT NULL,
	title VARCHAR(35) NOT NULl
);

-- check the table 
select * from departments;
select * from dept_emp; 
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles; 




