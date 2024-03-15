CREATE TABLE Sales (
    id INT,
    product VARCHAR(50),
    quantity_sold INT,
    price DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO Sales (id, product, quantity_sold, price, sale_date) VALUES
(1, 'Berry', 10, 50.00, '2024-03-15'),
(2, 'Apple', 5, 30.00, '2024-03-14'),
(3, 'Phone', 20, 15.00, '2024-03-13'),
(4, 'Iron', 8, 40.00, '2024-03-12'),
(5, 'Gold', 15, 20.00, '2024-03-11'),
(6, 'Oreo', 12, 35.00, '2024-03-10'),
(7, 'Lays', 3, 60.00, '2024-03-09'),
(8, 'Rapsberry', 18, 25.00, '2024-03-08'),
(9, 'Orange', 7, 45.00, '2024-03-07'),
(10, 'Carrot', 11, 55.00, '2024-03-06'),
(11, 'Egg', 6, 70.00, '2024-03-05'),
(12, 'Bread', 9, 65.00, '2024-03-04'),
(13, 'Chicken', 14, 22.00, '2024-03-03'),
(14,' Beef',16 ,18.00 ,'2024-03-02'),
(15,' Pork',13 ,28.50 ,'2024-03-01');

--Task1
SELECT DISTINCT product
FROM Sales;

--Task2
SELECT product, SUM(quantity_sold) AS total_quantity_sold
FROM Sales
GROUP BY product;

--task3
SELECT product, SUM(quantity_sold) AS total_quantity_sold
FROM Sales
WHERE price = (SELECT MAX(price) FROM Sales)
GROUP BY product;


--task4
SELECT product, SUM(quantity_sold) AS total_quantity_sold
FROM Sales
GROUP BY product
HAVING SUM(quantity_sold) > 100;


--task5
SELECT product, SUM(quantity_sold * price) AS total_revenue
FROM Sales
GROUP BY product;


--task6
SELECT product
FROM Sales
WHERE price > (SELECT AVG(price) FROM Sales);


--task7
SELECT product
FROM Sales
WHERE price > (SELECT AVG(price) FROM Sales)
AND quantity_sold > (SELECT AVG(quantity_sold) FROM Sales);


--task8
SELECT product
FROM Sales
WHERE price BETWEEN 50 AND 100
AND quantity_sold > 50;

--task9
SELECT LEFT(product, 1) AS first_letter, SUM(quantity_sold) AS total_quantity_sold
FROM Sales
GROUP BY LEFT(product, 1);

--task10
SELECT LEFT(product, 2) AS first_two_letters, MAX(price) AS max_price
FROM Sales
GROUP BY LEFT(product, 2);


--PART2
--task11
SELECT DISTINCT product
FROM Sales
ORDER BY product ASC;


--task12
SELECT YEAR(sale_date) AS Год, MONTH(sale_date) AS Месяц, SUM(quantity_sold) AS "Суммарное количество проданных товаров"
FROM Sales
GROUP BY YEAR(sale_date), MONTH(sale_date);


--task13
SELECT product, SUM(quantity_sold * price) AS total_revenue
FROM Sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 1;

--task14
SELECT product
FROM Sales
WHERE sale_date >= '2024-01-15'
GROUP BY product
HAVING SUM(quantity_sold) > (SELECT AVG(quantity_sold) FROM Sales);


--task15
SELECT product, SUM(quantity_sold * price) AS total_revenue
FROM Sales
GROUP BY product
HAVING SUM(quantity_sold * price) > (SELECT SUM(quantity_sold * price) * 0.1 FROM Sales);

--task16
SELECT TOP 2 product, SUM(quantity_sold) AS total_quantity_sold
FROM Sales
GROUP BY product
ORDER BY total_quantity_sold DESC

--task17
SELECT product
FROM Sales
WHERE sale_date >= DATEADD(MONTH, -3, GETDATE())
GROUP BY product
HAVING SUM(quantity_sold * price) > (SELECT AVG(quantity_sold * price) FROM Sales WHERE sale_date >= DATEADD(MONTH, -3, GETDATE()));

--task18
SELECT product
FROM Sales
WHERE YEAR(sale_date) = YEAR(GETDATE())
GROUP BY product
HAVING SUM(quantity_sold) > (SELECT SUM(quantity_sold) FROM Sales WHERE YEAR(sale_date) = YEAR(GETDATE()) - 1 GROUP BY product);

--task19
--невозможно сгруппировать по категорияем если их нет в таблице

--task20
SELECT YEAR(sale_date) AS Год, MONTH(sale_date) AS Месяц, MAX(quantity_sold) AS "Максимальное количество проданных товаров"
FROM Sales
GROUP BY YEAR(sale_date), MONTH(sale_date);
