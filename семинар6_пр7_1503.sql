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
    CASE WHEN product IS NULL THEN 'Total' ELSE product END AS product,
    CASE WHEN category IS NULL THEN 'Total' ELSE category END AS category,
    CASE WHEN region IS NULL THEN 'Total' ELSE region END AS region,
    SUM(revenue) AS total_revenue,
    SUM(quantity_sold) AS total_quantity_sold
FROM Sales
GROUP BY ROLLUP(product, category, region);

