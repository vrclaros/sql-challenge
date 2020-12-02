-- Create owners table and insert values
CREATE TABLE deparments (
  dept_no VARCHAR (10) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(30) not NULL
);


CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(10) NOT NULL,
  from_date DATE,
  to_date DATE
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(10) NOT NULL,
  emp_no INT,
  from_date DATE,
  to_date DATE
);

CREATE TABLE employees (
  emp_no INT,
  birth_date DATE,
  first_name VARCHAR(30)
  last_name VARCHAR(30),
  gender VARCHAR,
  hire_date DATE
);

CREATE TABLE salaries (
  emp_no INT,
  salary FLOAT,
  from_date DATE,
  to_date DATE
);

CREATE TABLE titles (
  emp_no INT,
  title VARCHAR(40),
  from_date DATE,
  to_date DATE
);