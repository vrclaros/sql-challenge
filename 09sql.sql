select 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
employees.gender as "Gender" ,
salaries.salary
from employees join salaries on employees.emp_no = salaries.emp_no
;

select 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
employees.gender as "Gender" ,
employees.hire_date as "Hire Date"
from employees 
where employees.hire_date between '1986-01-01' and '1986-12-31'
;

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
;


select distinct 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
departments.dept_name as "Dept Name"

from (( dept_manager 
	   inner join employees on employees.emp_no = dept_manager.emp_no)
	  inner join departments on departments.dept_no = dept_manager.dept_no)
;

select 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
employees.gender as "Gender" ,
employees.hire_date as "Hire Date"
from employees where employees.last_name like 'B%'
and employees.first_name = 'Hercules'

;

select distinct 
employees.emp_no as "Employee  Number",
employees.last_name as "Last Name",
employees.first_name as "First Name",
departments.dept_name as "Dept Name"

from (( dept_emp 
	   inner join employees on employees.emp_no = dept_emp.emp_no)
	  inner join departments on departments.dept_no = dept_emp.dept_no)
	  where departments.dept_name = 'Sales'
	  
;

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
;

select 
employees.last_name,
count(employees.last_name) as count_last_name
from employees

group by last_name
order by count_last_name DESC

;
