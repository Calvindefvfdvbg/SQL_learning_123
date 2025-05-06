-- 24 April 2025
-- list of database
show databases;
-- create database 
create database calvin123;
-- select database
use calvin123;
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

-- Date : 26 April 2025
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
select * from employee;
SET SQL_SAFE_UPDATES=0;
delete from employee where id = 103;

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

-- Date : 3 May 2025

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
-- Date: 6 May 2025
-- left join

create database calvin700;

use calvin700;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(40),
    Email VARCHAR(130)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(5, 2)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'calvin', 'dsilva', 'calvin@codeswithpankaj.com'),
    (2, 'Sayed', 'Hamza', 'Sayed@codeswithpankaj.com'),
    (3, 'Khan', 'Hamid', 'Khan@codeswithpankaj.com'),
    (4, 'Jaiswal', 'Jyoti', 'Jaiswal@codeswithpankaj.com'),
    (5, 'Pawar', 'Pranaya', 'pawar@codeswithpankaj.com'),
    (8, 'Shaikh', 'Shoeb', 'Shaikh@codeswithpankaj.com'),
    (10, 'Yash', 'Salvi', 'Salvi@codeswithpankaj.com');
    
    INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (101, 1, '2025-010-015', 700.00),
    (102, 2, '2025-04-015', 850.00),
    (103, 3, '2025-06-012', 890.00),
    (111, 11, '2025-07-013', 789.20),
    (109, 4, '2025-05-015', 260.70),
    (112, 9, '2025-12-015', 240.60);
    
    select* from customers;
    select* from orders;
    
select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers left join orders 
on customers.customerid = orders.customerid;

-- right join
select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers right join orders 
on customers.customerid = orders.customerid;

-- inner join
select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers inner join orders 
on customers.customerid = orders.customerid;

-- full join 

select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers left join orders 
on customers.customerid = orders.customerid
union
select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers right join orders 
on customers.customerid = orders.customerid;

-- Date 
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT CURRENT_TIMESTAMP();

select orderdate , year(orderdate) from orders;
select orderdate , month(orderdate) from orders;
select orderdate , day(orderdate) from orders;

-- DATE_ADD
select orderdate , DATE_ADD(orderdate , interval 20 Day) as new_date from orders;
select orderdate , DATE_ADD(orderdate , interval 20 year) as new_date from orders;
select orderdate , DATE_ADD(orderdate , interval 20 month) as new_date from orders;

-- DATE_SUB

select orderdate , DATE_SUB(orderdate , interval 20 month) as new_date from orders;
select orderdate , DATE_SUB(orderdate , interval 20 Day) as new_date from orders;
select orderdate , DATE_SUB(orderdate , interval 20 year) as new_date from orders;

-- CONCAT

select * from customers;

-- CONCAT

select * , concat(firstname," ",lastname) as full_name from customers;

-- LENGTH
select * , LENGTH(concat(firstname," ",lastname)) as full_name from customers;

select * , upper(concat(firstname," ",lastname)) as full_name from customers;

-- SUBSTRING

select firstname , SUBSTRING(firstname,1,2) from customers;

-- REPLACE
select email , REPLACE(email,'codeswithcalvin.com','cwcc.in') as new_email 
from customers;

CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATETIME
);

INSERT INTO events (event_name, event_date) VALUES
('Conference', '2025-05-05 09:00:00'),
('Workshop', '2025-05-10 14:30:00'),
('Meeting', '2025-06-01 10:00:00');

select Now();
select curdate();
select curtime();
select current_timestamp();

SELECT event_name, YEAR(event_date) AS year FROM events;
SELECT event_name, MONTH(event_date) AS month FROM events;
SELECT event_name, DAY(event_date) AS day FROM events;
SELECT event_name, HOUR(event_date) AS hour FROM events;
SELECT event_name, MINUTE(event_date) AS minute FROM events;
SELECT event_name, SECOND(event_date) AS second FROM events;
SELECT event_name, EXTRACT(WEEK FROM event_date) AS week FROM events;

SELECT event_name, DATE_ADD(event_date, INTERVAL 3 DAY) AS plus_3_days FROM events;
SELECT event_name, DATE_SUB(event_date, INTERVAL 2 HOUR) AS minus_2_hours FROM events;
SELECT event_name, DATEDIFF('2025-06-01', event_date) AS days_left FROM events;
SELECT event_name, TIMEDIFF(event_date, '2025-05-05 08:00:00') AS time_diff FROM events;

CREATE TABLE indian_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO indian_users (first_name, last_name, email) VALUES
('Aarav', 'Sharma', 'aarav.sharma@email.com'),
('Priya', 'Verma', 'priya.verma@email.com'),
('Rohan', 'Patel', 'rohan.patel@email.com'),
('Ananya', 'Singh', 'ananya.singh@email.com'),
('Vikram', 'Gupta', 'vikram.gupta@email.com');

select * from indian_users;

-- Concat
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM indian_users;

-- Upper
SELECT first_name, UPPER(first_name) AS uppercase_name
FROM indian_users;

-- Lower
SELECT email, LOWER(email) AS lowercase_email
FROM indian_users;

-- Length
SELECT first_name, LENGTH(first_name) AS name_length
FROM indian_users;

-- Substring
SELECT first_name, SUBSTRING(first_name, 1, 3) AS short_name
FROM indian_users;

-- Replace
SELECT last_name, REPLACE(last_name, 'Sharma', 'Kumar') AS updated_last_name
FROM indian_users;

-- Trim
SELECT TRIM(CONCAT(' ', first_name, ' ')) AS trimmed_name
FROM indian_users;

-- Locate
SELECT email, LOCATE('@', email) AS at_position
FROM indian_users;

