--Table Creation

Create Table Titles(
title_id varchar(5) not null Primary Key,
title varchar(50)
);

create table Departments(
dept_no varchar(10) not null Primary Key,
dept_name varchar(40) UNIQUE
);

Create Table Employee(
emp_no INT NOT NULL PRIMARY KEY,
emp_title_id varchar(5) NOT NULL,
birth_date date NOT NULL,
first_name varchar(20) NOT NULL,
last_name varchar(20) NOT NULL,
sex char(1) NOT NULL,
hire_date date NOT NULL,
	Foreign Key (emp_title_id) references titles(title_id)
);

Create Table Department_Employees(
emp_no int NOT NULL,
dept_no varchar(10),
	Foreign Key (emp_no) References Employee(emp_no),
	Foreign Key (dept_no) References Departments(dept_no)
);

create table Department_Manager(
dept_no varchar(10),
emp_no int NOT NULL,
	Foreign Key (emp_no) References Employee(emp_no),
	Foreign Key (dept_no) References Departments(dept_no)	
);

Create Table Salaries(
emp_no int NOT NULL,
salary int NOT NULL,
	Foreign Key (emp_no) References Employee(emp_no)
);