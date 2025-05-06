use calvin15;
-- Q.1 Create the Authors table with appropriate data types and constraints. Make author_id the primary key and ensure first_name and last_name cannot be null.
CREATE TABLE Authors6 (
    author_id INT PRIMARY KEY,
    first_name VARCHAR(70) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_year INT,
    nationality VARCHAR(50)
);
select * from Authors6;
-- Q.2 Create the Books table with:
-- A primary key for book_id
-- A foreign key referencing Authors table
-- A constraint ensuring price is greater than 0
-- A default value of 0 for stock

CREATE TABLE Books6 (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    publication_year INT,
    genre VARCHAR(50),
    price DECIMAL(10, 2) CHECK (price > 0),
    stock INT DEFAULT 0,
    FOREIGN KEY (author_id) REFERENCES Authors6(author_id)
);
select * from Books6;
-- Q.3 Insert three authors into the Authors table with different nationalities.
INSERT INTO Authors6 (author_id, first_name, last_name, birth_year, nationality)
VALUES 
(1, 'Alice', 'Walker', 1944, 'American'),
(2, 'James', 'Smith', 1985, 'British'),
(3, 'Maria', 'Lopez', 1975, 'Spanish');
-- Q.4 Insert five books into the Books table, ensuring at least two books are by the same author.
INSERT INTO Books6 (book_id, title, author_id, publication_year, genre, price, stock)
VALUES 
(101, 'Learning Python', 1, 2020, 'Programming', 22.99, 10),
(102, 'Mastering Java', 1, 2021, 'Programming', 19.99, 5),
(103, 'Data Science Basics', 2, 2022, 'Science', 25.50, 7),
(104, 'Modern Art Explained', 3, 2019, 'Art', 17.75, 3),
(105, 'Java for Beginners', 2, 2023, 'Programming', 14.99, 0);
-- Q.5 Write a query to find all books priced between $15 and $25.
SELECT * FROM Books6
WHERE price BETWEEN 15 AND 25;
-- Q.6 Find all books with either "Python" or "Java" in their title.
SELECT * FROM Books6
WHERE title LIKE '%Python%' OR title LIKE '%Java%';
-- Q.7 List all authors who were born after 1980 AND are either American or British.
SELECT * FROM Authors6
WHERE birth_year > 1980
AND nationality IN ('American', 'British');
-- Q.8 Display all customers who joined in 2023 but haven't placed any orders.
CREATE TABLE Customers1 (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    join_date DATE NOT NULL
);
select * from customers1;
INSERT INTO Customers1 (customer_id, first_name, last_name, email, join_date)
VALUES 
(201, 'John', 'Doe', 'john.doe@example.com', '2023-01-10'),
(202, 'Emma', 'Clark', 'emma.clark@example.com', '2023-02-05'),
(203, 'Mike', 'Brown', 'mike.brown@example.com', '2022-11-25'),
(204, 'Lily', 'Adams', 'lily.adams@example.com', '2023-07-18'),
(205, 'David', 'Wang', 'david.wang@example.com', '2021-09-30');
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    order_date DATE NOT NULL,
    quantity INT CHECK (quantity > 0),
    total_amount DECIMAL(10, 2) CHECK (total_amount >= 0),
    FOREIGN KEY (customer_id) REFERENCES Customers1(customer_id),
    FOREIGN KEY (book_id) REFERENCES Books6(book_id)
);
select * from Orders;
INSERT INTO Orders (order_id, customer_id, book_id, order_date, quantity, total_amount)
VALUES 
(301, 201, 101, '2023-03-01', 1, 22.99),
(302, 203, 104, '2023-04-15', 2, 35.50),
(303, 205, 102, '2023-05-10', 1, 19.99),
(304, 201, 105, '2023-07-21', 1, 14.99),
(305, 205, 103, '2024-01-05', 1, 25.50);
SELECT * FROM Customers
WHERE YEAR(join_date) = 2023
AND customer_id NOT IN (
    SELECT DISTINCT customer_id FROM Orders
);