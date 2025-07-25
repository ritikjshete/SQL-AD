-- Q1 Create database (company1)
create database company1;

-- Q2. Delete Database company1 
drop database company1;

-- Q3 Create database (company)
create database company;

-- Q4. Delete Database company 
drop database company

use company;

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    hire_date DATE,
    is_manager BOOLEAN
);

-- Insert Sample Data
INSERT INTO employees (employee_id, employee_name, salary, department, hire_date, is_manager)

select* from employees
where salary > 50000;

select* from employees
where  hire_date < "2022-01-01";

select* from employees
where  employee_id < 100 ;

select* from employees
where  department = "IT" ;

select* from employees
where  department != "HR" ;

select* from employees
where salary between 40000 and 60000;

select* from employees
where salary = 70000;

select* from employees
where salary = 70000;

select* from employees
where hire_date >"2022-06-01" 
and  department != "FINANCE" ;

select* from employees
where is_manager = true
or salary > 80000;

select* from employees
where department != "marketing"
and hire_date < "2022-12-31"   ;

select* from employees
where department = "it"
and salary < 60000  ;

select avg(salary) from employees;

select* from employees
where salary > (select avg(salary) from employees);

