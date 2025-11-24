import sqlite3
conn = sqlite3.connect("sales_data.db")
cursor = conn.cursor()
cursor.execute("""
CREATE TABLE IF NOT EXISTS sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product TEXT,
    quantity INTEGER,
    price REAL
);
""")
cursor.executemany("""
INSERT INTO sales (product, quantity, price) VALUES (?, ?, ?)
""", [
    ("Laptop", 5, 55000),
    ("Laptop", 3, 55000),
    ("Mobile", 10, 15000),
    ("Mobile", 6, 15000),
    ("Headphones", 15, 1200),
    ("Headphones", 20, 1200)
])
conn.commit()
conn.close()
print("Database created successfully!")

import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
conn = sqlite3.connect("sales_data.db")
query = """
SELECT 
    product,
    SUM(quantity) AS total_qty,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
"""
df = pd.read_sql_query(query, conn)
print("=== Sales Summary ===")
print(df)
plt.figure(figsize=(7,5))
plt.bar(df['product'], df['revenue'])
plt.title("Revenue by Product")
plt.xlabel("Product")
plt.ylabel("Revenue")
plt.tight_layout()
plt.savefig("sales_chart.png")  
plt.show()
conn.close()
