--1. List the following details of each employee: employee number, last name, first name, gender, and salary.

select 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
employees.gender as "Gender" ,
salaries.salary
from employees join salaries on employees.emp_no = salaries.emp_no


-- 2.List employees who were hired in 1986.
select 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
employees.gender as "Gender" ,
employees.hire_date as "Hire Date"
from employees 
where employees.hire_date between '1986-01-01' and '1986-12-31'


--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select 

dept_manager.dept_no as "Department Number",
departments.dept_name as "Dept Name",
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
dept_manager.from_date as "Start Date",
dept_manager.to_date as "End Date"

from (( dept_manager 
	   inner join employees on employees.emp_no = dept_manager.emp_no)
	  inner join departments on departments.dept_no = dept_manager.dept_no)
order by dept_manager.dept_no, dept_manager.to_date


--4.List the department of each employee with the following information: employee number, last name, first name, and department name.

select distinct 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
departments.dept_name as "Dept Name"

from (( dept_manager 
	   inner join employees on employees.emp_no = dept_manager.emp_no)
	  inner join departments on departments.dept_no = dept_manager.dept_no)


--5.List all employees whose first name is "Hercules" and last names begin with "B."
select 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
employees.gender as "Gender" ,
employees.hire_date as "Hire Date"
from employees where employees.last_name like 'B%'
and employees.first_name = 'Hercules'


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select distinct 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
departments.dept_name as "Dept Name"

from (( dept_emp 
	   inner join employees on employees.emp_no = dept_emp.emp_no)
	  inner join departments on departments.dept_no = dept_emp.dept_no)
	  where departments.dept_name = 'Sales'



--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--create view S_and_D_dept as 
select distinct 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
departments.dept_name as "Dept Name"

from (( dept_emp 
	   inner join employees on employees.emp_no = dept_emp.emp_no)
	  inner join departments on departments.dept_no = dept_emp.dept_no)
	  where departments.dept_name = 'Sales'
	  or departments.dept_name = 'Development'



--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select 
employees.last_name,
count(employees.last_name) as count_last_name
from employees

group by last_name
order by count_last_name DESC




