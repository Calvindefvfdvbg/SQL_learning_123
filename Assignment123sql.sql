-- 26 April 2025
CREATE DATABASE Play;
USE play;
CREATE TABLE Employees(
EmployeeID int primary key,
FirstName varchar(20),
LastName varchar(20),
Department varchar(20),
Salary numeric);
DESC Employees;
INSERT INTO Employees VALUE (101, 'JOHN', 'Doe', 'IT', 60000 ) ;
INSERT INTO Employees VALUE (102, 'Aditya', 'Marsh', 'IT', 200000 ) ;
INSERT INTO Employees VALUE (103, 'Nimish', 'Stoinis', 'Designer', 450000 ) ;
UPDATE Employees
SET Salary = 65000
WHERE EmployeeID = 101;
DELETE FROM Employees
WHERE EmployeeID = 101;
SELECT * FROM Employees;