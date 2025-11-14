create database HR;
use HR;

create table Employees(
Emp_id int primary key,
Emp_name varchar(50),
Hire_date date,
department_id int
);
create table Departments
(
department_id int primary key,
department_name varchar(50)
);
create table salaries(
salary_id int primary key,
Emp_id int,
salary_amount decimal(10, 2),
pay_date date,
foreign key (Emp_id) references Employees(Emp_id)
);
insert into Employees(Emp_id,Emp_name,Hire_date,department_id)
values(2001,'Raj','2020-03-04',101),
(2002,'Kamal','2020-03-05',102),
(2003,'Kannan','2020-03-06',103),
(2004,'Selvi','2021-03-06',104),
(2005,'Arun','2021-03-05',105);
insert into Departments(department_id,department_name)
values(101,'Maintain'),
(102,'Accounts'),
(103,'Admin'),
(104,'HR'),
(105,'Marketing');
insert into Salaries(salary_id,Emp_id,salary_amount,pay_date)
values(6,2001,25000,'2020-03-31'),
(7,2002,20000,'2020-04-01'),
(8,2003,25000,'2020-04-05'),
(9,2004,30000,'2021-03-31'),
(10,2005,20000,'2021-04-01');

DELIMITER //

CREATE PROCEDURE GetEmployeeDetailsByID
    (IN EmployeeID INT)
BEGIN
    SELECT 
        E.Emp_id,
        E.Emp_name,
        E.Hire_date,
        D.department_name,
        S.salary_amount,
        S.pay_date
    FROM 
        Employees E
    LEFT JOIN 
        Departments D ON E.department_id = D.department_id
    LEFT JOIN 
        Salaries S ON E.Emp_id = S.Emp_id
    WHERE 
        E.Emp_id = EmployeeID;
END//

DELIMITER ;

Use HR;
CALL GetEmployeeDetailsByID(2001);

CREATE VIEW Employee_Departmentview AS
SELECT 
    E.Emp_id,
    E.Emp_name,
    D.department_name
FROM 
    Employees E
JOIN 
    Departments D ON E.department_id = D.department_id; 


SELECT * FROM Employee_Departmentview;

CREATE VIEW EmployeeFullDetails AS
SELECT 
    E.Emp_id,
    E.Emp_name,
    E.Hire_date,
    D.department_name,
    S.salary_amount,
    S.pay_date
FROM 
    Employees E
JOIN 
    Departments D ON E.department_id = D.department_id
JOIN 
    Salaries S ON E.Emp_id = S.Emp_id;

SELECT * FROM EmployeeFullDetails;








