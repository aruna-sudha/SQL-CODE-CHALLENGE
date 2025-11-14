create database  Ecommerce;
use Ecommerce;

create table Products(
product_id  int primary key,
product_name  varchar(50),
Price decimal(10,2)
);
Insert into Products(product_id,product_name,Price)
values(1,"Smart_TV",15000.00),
(2,"Washing _Machine",10500.00),
(3,"Refrigerator",18000.00),
(4,"Air_cooler",20000.00),
(5,"Iphone",50000.00),
(6,"Laptop",40000.00);


Create Table Sales(
product_id int,
sale_id int primary key,
Total_Amount  decimal(10,2),
Sale_date date
);
Insert into Sales(product_id,sale_id,Total_Amount,Sale_date)
values(1,101,15000.00,'2025-06-06'),
(2,102,10500.00,'2025-06-07'),
(3,103,18000.00,'2025-06-08'),
(4,104,20000.00,'2025-06-07'),
(5,105,50000.00,'2025-06-07'),
(6,106,40000.00,'2025-06-07');

select*from Products; 
select product_id,product_name,Price
from Products
order by Price desc
Limit 3;


select *from Sales;
select Count(*) As total_sales;
select Sum(Total_Amount) As Total_Sales_Amount from Sales;
select Avg(Total_Amount) As Average_Sale_Amount from Sales;
select Max(Total_Amount) As Max_Sale_Amount from Sales;
select Min(Total_Amount) As Min_Sale_Amount from Sales;

Create table Employees
(
Emp_id int primary Key,
Emp_name varchar(50),
Department varchar(100)
);

insert into Employees (Emp_id,Emp_name,Department)
values(501,'Rajan','IT'),
(502,'Sai','HR'),
(503,'Dhruv','Accounts'),
(504,'Arun','IT'),
(505,'siva','HR'),
(506,'Raj','Finance'),
(507,'Ravi','Marketing'),
(508,'Kayal','IT'),
(509,'Sudha','Software Developer'),
(510,'Ram','Marketing');
select*from Employees;

SELECT Department, COUNT(Emp_id) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(Emp_id) >=10;