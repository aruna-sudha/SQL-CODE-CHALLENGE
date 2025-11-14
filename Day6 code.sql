CREATE DATABASE  COMPANY1;
USE COMPANY1;
CREATE TABLE employees1 (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date Date
);
INSERT INTO employees1 (emp_id,first_name, last_name,hire_date) 
VALUES(71,'Arun','Kumar',"2020-01-09"),
(72,'Mani','Raj',"2022-03-10"),
(73,'Sai','Dhruv',"2021-02-08"),
(74,'Sudha','Sree',"2024-02-07");
SELECT 
    first_name,
    last_name,
    UPPER(first_name) AS upper_name,
    LOWER(last_name) AS lower_name,
    CONCAT(UPPER(SUBSTRING(first_name, 1, 1)), 
    LOWER(SUBSTRING(first_name, 2))) AS proper_case_first,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM employees1;
select *from  employees1;

select first_name, last_name, hire_date, year(now())-year(hire_date) as Tenure_year from employees1;
select emp_id, datediff(now(),hire_date) as Tenure_days from employees1;




create table students(
student_id int primary key,
frist_name varchar(50),
last_name varchar(50)
);

insert into students values
(101,'Aruna','Sai'),
(102,'Arun','Raj'),
(103,'Mani','Maran'),
(104,'Sree','Sai');



Delimiter //

create function getfullname(first_name varchar(50), last_name varchar(50)) returns varchar(100) 
deterministic
begin 
return concat(first_name," ", last_name);
end //
select getfullname(frist_name,last_name) from students;

