CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);
INSERT INTO customers VALUES
(1, 'John Doe', 'john@example.com', 'USA'),
(2, 'Sarah Lee', 'sarah@example.com', 'India'),
(3, 'Amit Kumar', 'amit@example.com', 'India'),
(4, 'Maria Gomez', 'maria@example.com', 'Spain');
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 800),
(102, 'Keyboard', 'Electronics', 40),
(103, 'Shoes', 'Fashion', 60),
(104, 'Watch', 'Fashion', 120);
INSERT INTO orders VALUES
(1001, 1, '2024-01-10'),
(1002, 2, '2024-02-02'),
(1003, 3, '2024-02-05'),
(1004, 1, '2024-02-10');
INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1002, 103, 2),
(3, 1003, 104, 1),
(4, 1004, 102, 3);
SELECT product_name, category, price
FROM products
WHERE price > 50
ORDER BY price DESC;
SELECT category, SUM(price * quantity) AS total_revenue
FROM products
JOIN order_items USING(product_id)
GROUP BY category;
SELECT c.customer_name, o.order_id, o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY o.customer_id
    HAVING SUM(p.price * oi.quantity) > 500
);
SELECT 
    (SUM(p.price * oi.quantity) / COUNT(DISTINCT c.customer_id)) 
    AS ARPU
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;
CREATE VIEW customer_revenue AS
SELECT c.customer_name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id;
SELECT customer_name, COALESCE(email, 'no-email') AS email
FROM customers;
CREATE INDEX idx_orders_customer
ON orders(customer_id);












