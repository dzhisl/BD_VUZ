CREATE TABLE Sales (
    id INT PRIMARY KEY,
    product NVARCHAR(50),
    category NVARCHAR(50),
    region NVARCHAR(50),
    quantity_sold INT,
    revenue DECIMAL(10, 2)
);
INSERT INTO Sales (id, product, category, region, quantity_sold, revenue)
VALUES
(1, 'Product A', 'Category X', 'Region 1', 10, 100.50),
(2, 'Product B', 'Category Y', 'Region 2', 20, 250.75),
(3, 'Product C', 'Category Z', 'Region 1', 15, 180.25);


--task1
SELECT product, category, SUM(revenue) AS total_revenue
FROM Sales
GROUP BY GROUPING SETS ((product), (category), ());

--task2
SELECT product, SUM(revenue) AS product_revenue
FROM Sales
GROUP BY product

UNION ALL

SELECT 'Total' AS product, SUM(revenue) AS product_revenue
FROM Sales

GROUP BY product

UNION ALL

SELECT category, SUM(revenue) AS category_revenue
FROM Sales
GROUP BY category;

