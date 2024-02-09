CREATE TABLE Employees (
  EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,
  FirstName varchar(100),
  LastName varchar(100),
  dept varchar(50),
  salary int
);

INSERT INTO Employees (FirstName, LastName, dept, salary) VALUES
('John', 'Doe', 'IT', 60000),
('Jane', 'Smith', 'HR', 55000),
('Michael', 'Johnson', 'Finance', 65000),
('Emily', 'Davis', 'Marketing', 58000),
('James', 'Wilson', 'Sales', 62000);

--3
SELECT * FROM Employees 

--4
SELECT COUNT(*) AS TotalEmployees
FROM Employees;

--5
SELECT *
FROM Employees
WHERE salary > 60000;

--6
UPDATE Employees
SET dept = 'Marketing'
WHERE EmployeeID = 3;

-----------------------------------------------------------------------------------------------------------------------
CREATE TABLE Orders (
  OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
  CustomerID INTEGER,
  OrderDate DATE,
  TotalAmount INTEGER
);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) 
VALUES
(1, '2023-01-15', 150),
(2, '2023-01-16', 200),
(1, '2023-01-17', 100),
(3, '2023-01-18', 300),
(2, '2023-01-19', 250),
(4, '2023-01-20', 180),
(1, '2023-01-21', 210),
(3, '2023-01-22', 175),
(2, '2023-01-23', 195),
(4, '2023-01-24', 225);

--2
SELECT * FROM Oders

--3
SELECT * FROM Oders
WHERE CustomerID = 2

--4
SELECT CustomerID, SUM(TotalAmount) AS TotalPurchaseAmount
FROM Orders
GROUP BY CustomerID;

--5
SELECT * FROM Orders
WHERE OrderDate >= '2022-01-01' AND OrderDate <= '2022-12-31';

--6
UPDATE Orders
SET TotalAmount = 120
WHERE OrderID = 3;


-----------------------------------------------------------------------------------------------------------------------
CREATE TABLE Sales (
  SaleID INTEGER PRIMARY KEY AUTOINCREMENT,
  ProductID INTEGER,
  Quantity INTEGER,
  PricePerUnit INTEGER,
  TotalPrice INTEGER
);

INSERT INTO Sales (SaleID, ProductID, Quantity, PricePerUnit, TotalPrice) 
VALUES 
(1, 1001, 5, 20.00, 100.00),
(2, 1002, 3, 15.00, 45.00),
(3, 1003, 10, 8.00, 80.00),
(4, 1001, 8, 20.00, 160.00),
(5, 1004, 2, 50.00, 100.00),
(6, 1002, 5, 15.00, 75.00),
(7, 1005, 1, 200.00, 200.00),
(8, 1003, 7, 8.00, 56.00),
(9, 1006, 4, 30.00, 120.00),
(10, 1004, 3, 50.00, 150.00);

--3
SELECT * FROM Sales;

--4
SELECT SaleID, ProductID, Quantity, PricePerUnit, TotalPrice, (Quantity * PricePerUnit) AS TotalAmount
FROM Sales;

--5
SELECT SaleID, ProductID, Quantity, PricePerUnit, TotalPrice
FROM Sales
HAVING TotalPrice > 150;

--6
UPDATE Sales
SET Quantity = 122, PricePerUnit = 250
WHERE SaleID = 2;

--7
DELETE FROM Sales
WHERE SaleID = 2;

