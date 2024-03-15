CREATE TABLE Sales (
    id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    region VARCHAR(50),
    quantity_sold INT,
    revenue DECIMAL(10, 2)
);

INSERT INTO Sales (id, product, category, region, quantity_sold, revenue)
VALUES
    (1, 'Product A', 'Category 1', 'Region 1', 100, 500.00),
    (2, 'Product B', 'Category 2', 'Region 2', 50, 250.00),
    (3, 'Product C', 'Category 1', 'Region 1', 75, 375.00),
    (4, 'Product D', 'Category 3', 'Region 3', 120, 600.00),
    (5, 'Product E', 'Category 2', 'Region 2', 90, 450.00);

--task1
SELECT category, SUM(revenue) AS TotalRevenue
FROM Sales
GROUP BY category;


--task2
SELECT category, region, SUM(revenue) AS TotalRevenue
FROM Sales
GROUP BY category, region;
