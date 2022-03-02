-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/p87sy0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

departments
-
dept_no VARCHAR PK
dept_name VARCHAR


dept_emp
-
emp_no INTEGER PK FK >- employees.emp_no
dept_no VARCHAR FK >- departments.dept_no



dept_manager
-
dept_no VARCHAR PK FK >- departments.dept_no
emp_no INTEGER PK FK >- employees.emp_no


employees
-
emp_no INTEGER PK FK - salaries.emp_no
emp_title VARCHAR FK >- title.title_id
birth_date VARCHAR
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date VARCHAR

salaries
-
emp_no INTEGER PK 
salary INTEGER


title
-
title_id VARCHAR PK
title VARCHAR

