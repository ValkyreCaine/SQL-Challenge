--Queries for Analysis
	--Verify data imports
Select *
from Titles

Select *
from Departments

Select *
from Employee

Select *
from Department_Employees

Select *
from Department_Manager

Select *
from Salaries

--List the employee number, last name, first name, sex, and salary of each employee.
Select emp_no, last_name, first_name, sex, salary from employee join salaries using(emp_no);

--List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name,last_name, hire_date from employee where extract(year from hire_date)= 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select dept_no, dept_name, emp_no, last_name, first_name from department_manager join departments using(dept_no) join employee using(emp_no);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select dept_no, emp_no, last_name, first_name, dept_name from department_manager join departments using(dept_no) join employee using(emp_no);

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex from employee where first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
Select emp_no, last_name, first_name from employee join department_employees using(emp_no) join departments using(dept_no)  where dept_name like 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select emp_no, last_name, first_name, dept_name from employee join department_employees using(emp_no) join departments using(dept_no)  where dept_name in ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, count(last_name) as "Number of Employees" from employee group by last_name order by "Number of Employees" desc;