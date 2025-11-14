CREATE DATABASE SVSCHOOL;
USE SVSCHOOL;
CREATE TABLE STUDENTS
(
student_id int primary key,
Student_name varchar(50),

);
Create table Courses
(
course_id int primary key,
course_name varchar(50)
);
CREATE TABLE Enrollments (
    enrollment_id int primary key,
    student_id int,
    course_id int,
    FOREIGN KEY (student_id) REFERENCES STUDENTS(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
Insert into STUDENTS(student_id,Student_name)
values
(201,'Rajan'),
(202,'Dhruv'),
(203,'Sudha'),
(204,'Sai'),
(205,'Mithran');
Insert into Courses(course_id,course_name)
Values
(301, 'CSC'),
(302,'Mech'),
(303,'IT'),(304,'ECE'),(305,'ITI');
INSERT INTO Enrollments(enrollment_id, student_id, course_id)
VALUES 
    (1001, 201, 301),
    (1002, 202, 302),
    (1003, 203, 303),
    (1004, 204, 304);



SELECT 
    s.Student_name, 
    c.course_name
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;


SELECT 
    s.student_name, 
    c.course_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;

SELECT 
    s.student_name, 
    c.course_name
FROM students s
RIGHT JOIN enrollments e ON s.student_id = e.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;



-- UNION vs UNION ALL --

CREATE TABLE Current_employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100)
);

CREATE TABLE Past_employees (
    emp_id INT PRIMARY KEY ,
    emp_name VARCHAR(100)
);
INSERT INTO Current_employees (emp_id,emp_name) 
VALUES(10001,'Arun'),
(10002,'Alex'),
(10003,'Bala'),
(10004,'Balu'),
(10005,'Ravi'),
(10006,'Raj'),
(10007,'Rani');
SHOW TABLES;
INSERT INTO Past_employees (emp_id, emp_name)
VALUES
    (10003, 'Bala'),
    (10004, 'Balu'),
    (10008, 'Kiran'),
    (10009, 'Meena'),
    (10010, 'Vijay');
    USE svschool;
    
SHOW DATABASES;

SELECT * FROM Current_employees;



SELECT emp_id, emp_name FROM Current_employees
UNION
SELECT emp_id, emp_name FROM Past_employees;


SELECT emp_id, emp_name FROM Current_employees
UNION All
SELECT emp_id, emp_name FROM Past_employees;


