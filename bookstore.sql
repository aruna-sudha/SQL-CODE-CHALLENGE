create database OnlineBookStore;
use OnlineBookStore;

/*SQL Question 1: PRIMARY KEY & FOREIGN KEY
Scenario:
 You are creating a database for an online bookstore.
Task:
 Define a primary key for Books(BookID) and a foreign key in Orders(BookID) referencing Books.
Expected Output:
 Constraints are applied successfully.
--create table with primerykey
create table Books(
BookId int primary key,
Title varchar(50),
Author varchar(50),
ISBN varchar(20),
);

 create table orders(
 orderid int primary key,
 orderdate date,
 BookId int ,
 foreign key (BookId) references Books(BookId)
 );
 
 
 
 /*SQL Question 2: UNIQUE Constraint
Scenario:
 Each book must have a unique ISBN.
Task:
 Add a UNIQUE constraint to the ISBN column in Books.
Expected Output:
 ISBN values are enforced as unique.
 
 alter table books
 add constraint unique_ISBN unique(ISBN);
 
 
 /* 
SQL Question 3: DELETE vs TRUNCATE
Scenario:
 The store wants to clear test orders but sometimes preserve structure.
Task:
 Demonstrate DELETE with WHERE clause and TRUNCATE for Orders table.
Expected Output:
 DELETE removes selected rows; TRUNCATE clears all rows quickly.

delete from  orders
where orderid<=5;

truncate table orders;
