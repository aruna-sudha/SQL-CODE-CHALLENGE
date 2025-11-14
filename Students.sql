create database University;
use University;

create table Students(
student_id int primary key,
student_name varchar(50),
department_name varchar(50),
gender enum ('M','F'),
Email  varchar(50),
gpa decimal(10,2),
department_id int
);

insert into 
Students(student_id,student_name,department_name,gender,Email,gpa,department_id)
values
(1,'Dhruv','csc','M','dhruv@mail.com',8.9,501),
(2,'Sai','mech','M',NULL,8.5,301),
(3,'Hari','csc','M','hari@mail.com',7.5,507),
(4,'sudha','IT','F','sudha@mail.com',7.9,406),
(5,'Rajan','mech','M',NULL,9.8,308);



select distinct student_id

from Students;

select student_name,department_name
from students
where Email Is NULL;

select student_name,department_name
from students
where Email Is Not NULL;

select student_name,department_name
from students
where department_id IN(501,507,301);


select student_name,department_name
from students
where gpa BETWEEN 7.9 and 8.9 ;


select student_name,department_name
from students
where gpa NOT BETWEEN 7.9 and 8.9 ;
