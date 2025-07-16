create database com;
use com;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EName VARCHAR(100),
    Salary DECIMAL(10,2),
    Deptid VARCHAR(100) , foreign key  (Deptid) REFERENCES dept(Deptid)
);

CREATE TABLE dept (
    Deptid VARCHAR(100) PRIMARY KEY,
    DName VARCHAR(100),
    cost int
);

insert into dept values
("DA","Data Analytics",1000000),
("DS","Data Scieance",1000000);

insert into Employee values
(1,"abhi",50000,'DS'),
(2,"Sagar",35000,'DS'),
(3,"rehan",45000,'DA'),
(4,"sahil",50000,'DS'),
(5,"gauri",65000,'DS');

select * from employee;
select * from dept;

update dept 
set cost = 3000000
where dname = 'Data Scieance';

select employee.EName,dept.DName,dept.cost
from employee join dept
on employee.deptid = dept.deptid;

