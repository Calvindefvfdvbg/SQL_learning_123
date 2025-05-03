-- 24 April 2025
-- list of database
show databases;
-- create database 
create database calvin456;
-- select database
use calvin456;
-- delete database
drop database calvin15;
-- create table 
create table employee(
	id int,
    name varchar(50),
    dept enum('sales','it','hr','mobile development'),
    salary int,
    age int,
    join_date date,
    city varchar(50),
    mobile varchar(15)
);
-- show list of table
show tables;

-- open table and check data 
select * from employee;
-- insert record into table 
insert into employee (id,name,dept,salary,age,join_date,city) 
value (102,'Toy','HR',45000,56,'2023-11-25','pune');
-- multiple
insert into employee (id,name,dept,salary,age,join_date,city) 
values (101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai');

-- introduction of Database 
-- intro - Sql
-- Create Database 
-- drop Database
-- select Database
-- create table 
-- insert query 
-- where 
-- and operator
-- or operator
-- update query 
-- delete 
-- like 
-- top
-- order by
-- group by
-- distinct keyword
-- Constraints
-- join
-- unions claus
-- truncate table 
-- having 
-- view 
-- useful function

-- list of database
show databases;

-- create database 
create database calvin15;

-- select database
use calvin15;

-- delete database
drop database calvin;

-- create table
create table employee(
	id int primary key,
    name varchar(50),
    dept enum('sales','it','hr','mobile development'),
    salary int,
    age int,
    join_date date,
    city varchar(50),
    mobile varchar(15)
);

-- show list of table
show tables;

-- open table and check data 
select * from employee;

-- insert record into table 
insert into employee (id,name,dept,salary,age,join_date,city,mobile) 
value (102,'Toy','HR',45000,56,'2023-11-25','pune','925288696');

-- multiple
insert into employee (id,name,dept,salary,age,join_date,city) 
values (101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai'),
(101,'Joy','sales',45000,56,'2023-11-25','mumbai');

-- Date 26 April 2025
-- primary key 
create table graduate(
	id int,
    name varchar(50),
    dept enum('sales','it','hr','mobile development'),
    salary int,
    age int,
    join_date date,
    city varchar(50)
);

-- show list of table
show tables;

-- open table and check data 
select * from graduate;

-- insert record into table 
insert into employee (id,name,dept,salary,age,join_date,city) 
value (101,'Joy','sales',45000,56,'2023-11-25','mumbai');

-- where 
show databases;

use classicmodels;

show tables;

select * from customers;

select * from customers where country = "Las Vegas";
select customername,phone,creditlimit,city,state,country 
from customers where country = "Las Vegas";

-- and operator
select customername,phone,creditlimit,city,state,country 
from customers where country = "Las Vegas" and state = "Singapore";

-- or operator
select customername,phone,creditlimit,city,state,country 
from customers where country = "Las Vegas" or creditlimit > 15000000;

-- update query 

select customername,phone,creditlimit,city,state,country
from customers where customernumber = 223;

update customers set phone = "785630211111"
where customernumber = 223;

-- delete 
use calvin456;
select * from employee1;
SET SQL_SAFE_UPDATES=0;
delete from employee1 where id = 101;

-- 29 April 2025

-- like 
use classicmodels;

select * from customers;

select * from customers where customername like "c%";
select * from customers where customername like "%c%";
select * from customers where customername like "%c";
select * from customers where customername like "mini%";

-- top (limit)

select * from customers limit 7;

-- order by
select * from customers order by creditlimit asc;
select * from customers order by creditlimit desc;

select * from customers order by customername asc;
select * from customers order by customername desc;

-- distinct keyword

select distinct city  from customers;

-- group by

select city from customers group by city;

-- count()

select city , count(city)as total_count from customers group by city;

-- sum()
select sum(creditlimit) from customers where country = "Las Vegas";

-- distinct keyword

use classicmodels;
select * from customers;
select distinct state from customers;

-- Constraints
create database calvin;
use calvin;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(40)
);

-- Inserting records into the "Customers" and "Orders" tables
INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES
    (1, 'Calvin', 'Dsilva'),
    (2, 'Shoeb', 'Shaikh');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

  
INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
    (101, 1, '2023-01-15'),
    (102, 2, '2023-02-20'); 
    
    -- unions claus
    
    CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(40),
    Email VARCHAR(150)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(150),
    Email VARCHAR(150)
);

INSERT INTO Customers1 (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'Calvin', 'Dsilva', 'calvin@codeswithcalvin.com'),
    (2, 'Frank', 'Dsouza', 'frank@codeswithfrank.com'),
    (3, 'Darrel', 'Dsouza', 'Darrel@codeswithdarrel.com'),
    (4, 'Shoeb', 'Shaikh', 'Shoeb@codeswithshoeb.com'),
    (5, 'Hardik', 'Rider', 'Hardik@codeswithhardik.com');
    
    INSERT INTO Suppliers (SupplierID, CompanyName, Email)
VALUES
    (101, 'ABC Inc.', 'abc@codeswithpankaj.com'),
    (102, 'XYZ Ltd.', 'xyz@codeswithpankaj.com'),
    (103, 'Company A', 'companya@p4n.in');
    
    select email from customers1
union
select email from Suppliers;

-- truncate table 

truncate table customers1;
    
   
