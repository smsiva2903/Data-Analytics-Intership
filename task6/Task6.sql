CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT,
    customer_id INT
);
INSERT INTO online_sales VALUES
(1, '2024-01-05', 1200.00, 101, 1),
(2, '2024-01-12', 850.00, 102, 2),
(3, '2024-01-22', 500.00, 103, 3),
(4, '2024-02-03', 1300.00, 101, 1),
(5, '2024-02-10', 750.00, 102, 4),
(6, '2024-02-25', 400.00, 104, 2),
(7, '2024-03-01', 950.00, 101, 1),
(8, '2024-03-15', 1100.00, 103, 5),
(9, '2024-03-26', 650.00, 104, 3),
(10, '2024-04-02', 1450.00, 102, 6),
(11, '2024-04-11', 900.00, 101, 1),
(12, '2024-04-27', 300.00, 104, 7),
(13, '2024-05-04', 1600.00, 103, 1),
(14, '2024-05-12', 700.00, 102, 3),
(15, '2024-05-21', 550.00, 104, 2),
(16, '2024-06-08', 1800.00, 103, 4),
(17, '2024-06-14', 900.00, 101, 1),
(18, '2024-06-23', 450.00, 104, 6),
(19, '2024-06-28', 1250.00, 102, 5),
(20, '2024-06-30', 775.00, 103, 7);
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
SELECT 
    DATE_FORMAT(order_date, '%Y') AS year,
    DATE_FORMAT(order_date, '%M') AS month_name,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month_name
ORDER BY year, STR_TO_DATE(month_name, '%M');
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY revenue DESC
LIMIT 3;
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders
FROM online_sales;
SELECT 
    SUM(COALESCE(amount, 0)) AS total_revenue
FROM online_sales;
SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
WHERE YEAR(order_date) = 2024
GROUP BY MONTH(order_date)
ORDER BY month;








