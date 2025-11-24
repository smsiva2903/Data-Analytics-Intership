# Task 7 – Basic Sales Summary using SQLite + Python

##  Objective
Use Python and SQLite to generate a basic sales summary including total quantity sold and total revenue for each product. Display the output using print statements and a simple bar chart.

---

##  Dataset
A small SQLite database `sales_data.db` containing one table:

### **sales**
- id  
- product  
- quantity  
- price  

Sample data was inserted using Python.

---

## 🛠 Tools Used
- Python  
- SQLite (sqlite3 module)  
- Pandas  
- Matplotlib  

---

##  Steps Performed
1. Created SQLite database (`sales_data.db`)  
2. Created a table named **sales**  
3. Inserted sample product sales data  
4. Connected to database using `sqlite3.connect()`  
5. Ran SQL query to compute:
   - Total quantity sold per product  
   - Total revenue per product  
6. Loaded SQL results into pandas DataFrame  
7. Printed sales summary  
8. Visualized revenue using a bar chart  
9. Saved chart as `sales_chart.png`  

---

##  SQL Query Used

```sql
SELECT 
    product,
    SUM(quantity) AS total_qty,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product;


##  Output Chart

Bar chart: Product vs Revenue
Saved as sales_chart.png

##  Files Included

sales_data.db
task7_sales_summary.py
sales_chart.png
sales_chart screenshot image
README.md