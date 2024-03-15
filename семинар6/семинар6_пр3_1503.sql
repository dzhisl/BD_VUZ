CREATE TABLE Sales (
    id INT PRIMARY KEY,
    product VARCHAR(255),
    category VARCHAR(50),
    region VARCHAR(50),
    quantity_sold INT,
    revenue DECIMAL(10, 2)
);

INSERT INTO Sales (id, product, category, region, quantity_sold, revenue)
VALUES
(1, 'Product A', 'Electronics', 'North', 100, 5000.00),
(2, 'Product B', 'Clothing', 'South', 50, 2500.00),
(3, 'Product C', 'Home Goods', 'East', 75, 3000.00);



--task1
SELECT product, category, region, SUM(revenue) AS total_revenue
FROM Sales
GROUP BY CUBE(product, category, region);


--task2
SELECT COALESCE(product, 'Total') AS product,
       COALESCE(category, 'Total') AS category,
       COALESCE(region, 'Total') AS region,
       SUM(revenue) AS total_revenue
FROM Sales
GROUP BY ROLLUP(product, category, region);
