Create database library1;

use library1;

CREATE TABLE Author(
AuthorID int,
AuthorName varchar(50),
BirthYear int
);

INSERT INTO Author VALUES(201, 'Jane Smith', 1980);
INSERT INTO Author VALUES(202, 'Aditya Marsh', 2002);
INSERT INTO Author VALUES(203, 'Nimish Maxwell', 2005);

CREATE TABLE BOOK(
BookID int Not Null primary key,
Title varchar(20),
AuthorID int references Author(AuthorID),
PublicationYear int,
Available boolean
);

-- True = 1, False =0 (Boolean values i.e. o and 1)
INSERT INTO BOOK VALUES(101, 'WILL',201, 2021, '1');
INSERT INTO BOOK VALUES(102, 'CRICKET' ,202, 2022, '0');
INSERT INTO BOOK VALUES(103, 'DESIGNER',203, 2023, '0');

SELECT * FROM BOOK;


UPDATE BOOK
SET PublicationYear = 2019
WHERE BookID = 103;

SELECT * FROM BOOK;

DELETE FROM Books
WHERE PublicationYear < 2000;




