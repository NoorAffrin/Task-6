CREATE DATABASE online_sales_db;
USE online_sales_db;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- Import CSV before running these:
SELECT YEAR(order_date) AS year, MONTH(order_date) AS month, SUM(amount) AS monthly_revenue
FROM online_sales GROUP BY YEAR(order_date), MONTH(order_date);

SELECT YEAR(order_date) AS year, MONTH(order_date) AS month, COUNT(order_id) AS total_orders
FROM online_sales GROUP BY YEAR(order_date), MONTH(order_date);

SELECT YEAR(order_date) AS year, MONTH(order_date) AS month,
SUM(amount) AS monthly_revenue, COUNT(order_id) AS total_orders
FROM online_sales GROUP BY YEAR(order_date), MONTH(order_date);

SELECT YEAR(order_date) AS year, MONTH(order_date) AS month, SUM(amount) AS revenue
FROM online_sales GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY revenue DESC LIMIT 3;
