CREATE DATABASE IF NOT EXISTS testDB;
USE testDB;

CREATE TABLE IF NOT EXISTS Persons (
    PersonID INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES 
("1", 'Sharma', 'Ram', 'Kathmandu-01', 'Kathmandu'),
("2", 'Bajracharya', 'Uppashana', 'Lalitpur-05', 'Lalitpur'),
("3", 'Shrestha', 'Sita', 'Bhaktapur-03', 'Bhaktapur');

select * from Persons;

UPDATE Persons
SET City = 'Pokhara'
WHERE PersonID = 1;

DELETE FROM Persons
WHERE PersonID = 3;


ALTER TABLE Persons
ADD Email VARCHAR(255);

select * from Persons;

SELECT COUNT(DISTINCT City) FROM Persons;

SELECT *
FROM Persons
WHERE City = 'Kathmandu' AND FirstName LIKE 'G%';

SELECT *
FROM Persons
WHERE City = 'Kathmandu' OR City = 'Lalitpur';

SELECT * FROM Persons
WHERE NOT City = 'Kathmandu';

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    PersonID INT,
    Product VARCHAR(255),
    Amount INT,
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

INSERT INTO Orders (OrderID, PersonID, Product, Amount)
VALUES
(101, 1, 'Laptop', 80000),
(102, 2, 'Mobile', 30000),
(103, 1, 'Headphones', 5000);

SELECT Persons.FirstName, Persons.City, Orders.Product, Orders.Amount
FROM Persons
INNER JOIN Orders
ON Persons.PersonID = Orders.PersonID;

SELECT Persons.FirstName, Orders.Product
FROM Persons
LEFT JOIN Orders
ON Persons.PersonID = Orders.PersonID;

SELECT Persons.FirstName, Orders.Product
FROM Persons
RIGHT JOIN Orders
ON Persons.PersonID = Orders.PersonID;


 





