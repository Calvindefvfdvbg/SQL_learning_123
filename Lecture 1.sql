-- 24 April 2025
-- list of database
show databases;

-- create database 
create database calvin15;

-- select database
use calvin15;

-- delete database
drop database calvingraduate;

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

select * from customers where country = "Italy";
select customername,phone,creditlimit,city,state,country 
from customers where country = "Italy";

-- and operator
select customername,phone,creditlimit,city,state,country 
from customers where country = "Italy" and state = "NY";

-- or operator
select customername,phone,creditlimit,city,state,country 
from customers where country = "Italy" or creditlimit > 500000;

-- update query 
select customername,phone,creditlimit,city,state,country
from customers where customernumber = 115;

update customers set phone = "999555888"
where customernumber = 115;
-- delete

use calvin15;
select * from employee;
SET SQL_SAFE_UPDATES=0;
delete from employee where id = 101;

-- 29 April 2025
-- like 
use classicmodels;

select * from customers;

select * from customers where customername like "s%";
select * from customers where customername like "%s%";
select * from customers where customername like "%s";
select * from customers where customername like "mini%";

-- top (limit)

select * from customers limit 5;

-- order by
select * from customers order by creditlimit asc;
select * from customers order by creditlimit desc;

select * from customers order by customername desc;
select * from customers order by customername asc;

-- distinct keyword

select distinct state  from customers;

-- group by

select state from customers group by state;

-- count()

select state , count(state)as total_count from customers group by state;

-- sum()
select sum(creditlimit) from customers where country = "Italy";