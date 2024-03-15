--task1
SELECT category, SUM(revenue) AS total_revenue
FROM Sales
GROUP BY category;


--taks2
SELECT category, region, SUM(revenue) AS total_revenue
FROM Sales
GROUP BY category, region;
