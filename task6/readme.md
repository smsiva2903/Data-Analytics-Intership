# Task 6 – Sales Trend Analysis Using SQL

##  Objective
Analyze monthly revenue and order volume using SQL aggregation functions in MySQL.

##  Dataset
Table Name: `online_sales`

Columns:
- order_id  
- order_date  
- amount  
- product_id  
- customer_id  

20 rows of sample sales data were inserted manually.

##  Tools Used
- MySQL
- SQL Workbench / XAMPP / phpMyAdmin
- GitHub for submission

---

##  Key SQL Operations Performed

###  Monthly Revenue & Order Volume
Used:
- `SUM(amount)` for revenue  
- `COUNT(DISTINCT order_id)` for order count  
- `GROUP BY year, month`

###  Top 3 Months by Sales
Using:
- `ORDER BY revenue DESC LIMIT 3`

###  Extracting Month & Year
- `YEAR(order_date)`
- `MONTH(order_date)`
- `DATE_FORMAT()`

###  Handling NULL Values
- `COALESCE(amount, 0)`

---

##  Insights
- Revenue shows clear growth from Jan to Jun.
- June has the highest revenue among all months.
- Order count closely follows revenue trends.
- Electronics (product_id 101/102/103) contribute maximum sales.

---

##  Files Included
- `task6.sql` (database creation, inserts, queries)
- `results_screenshots/` (query output images)
- `README.md`

---

