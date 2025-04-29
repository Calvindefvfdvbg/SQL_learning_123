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




