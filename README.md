# SQLTask4
Aggreagate function &amp; Grouping


# 📊 Sales Data SQL Queries

This project contains simple SQL queries using the `sales` table to practice important SQL functions like:

- `SUM()` – to calculate total quantity or sales
- `COUNT()` – to count how many times a product is sold
- `AVG()` – to find the average price of products
- `GROUP BY` – to group data by product name


## 🛠️ Sample Queries
```sql
-- Total quantity per product
SELECT product_name, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name;

-- Total sales amount per product
SELECT product_name, SUM(quantity * price) AS total_sales
FROM sales
GROUP BY product_name;

-- Number of times each product sold
SELECT product_name, COUNT(*) AS times_sold
FROM sales
GROUP BY product_name;

-- Products with total quantity sold > 15
SELECT product_name, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name
HAVING SUM(quantity) > 15;
