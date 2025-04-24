-- list of database
show databases;

-- create database
create database calvin;

-- select database
use calvin;

-- delete database
drop database calvin15;

-- create table

create table employees(
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
select* from employees;

-- insert record into table
insert into employees(id,name,dept,salary,age,join_date,city)
value(101,'Calvin','sales',45000,56,'2025-04-24','mumbai');

-- multiple
insert into employees(id,name,dept,salary,age,join_date,city)
values(101,'Calvin','sales',45000,56,'2025-04-24','mumbai'),
(101,'Frank','it',54000,20,'2025-04-24','pune'),
(101,'Darrel','hr',65000,56,'2025-04-24','Kutch'),
(101,'Hardik','mobile development',56000,56,'2025-04-24','Nallasopara'),
(101,'shoeb','it',45000,56,'2025-04-24','Nashik'),
(101,'sahil','sales',45000,56,'2025-04-24','Vile Parle');

