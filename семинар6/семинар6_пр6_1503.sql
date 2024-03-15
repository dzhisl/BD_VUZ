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
(1, 'Product A', 'Category 1', 'Region 1', 10, 100.00),
(2, 'Product B', 'Category 2', 'Region 2', 15, 150.00),
(3, 'Product A', 'Category 1', 'Region 2', 20, 200.00),
(4, 'Product C', 'Category 3', 'Region 1', 5, 50.00);


--task2
SELECT
    product,
    category,
    region,
    SUM(revenue) AS total_revenue
FROM Sales
GROUP BY CUBE (product, category, region);

