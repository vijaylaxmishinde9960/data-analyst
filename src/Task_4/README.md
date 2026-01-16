
# Task 4: SQL for Data Analysis

## Objective
Use SQL queries to extract and analyze data from a relational database. This project uses an example Ecommerce database and demonstrates essential SQL operations.

---

## Files Included
1. **Ecommerce_DB.sqlite** - SQLite database file containing sample data for Customers, Products, Orders, and OrderDetails.
2. **Task3_SQL_Analysis.sql** - SQL script file containing:
   - SELECT queries with WHERE and ORDER BY
   - GROUP BY queries with aggregate functions (SUM, AVG)
   - JOINs (INNER and LEFT)
   - Subqueries
   - View creation
   - Index creation

---

## How to Use

### 1. Open Database
- Open `Ecommerce_DB.sqlite` using **DB Browser for SQLite** or any compatible SQL tool.

### 2. Run SQL Queries
- Open `Task3_SQL_Analysis.sql`
- Run each query one-by-one inside your SQL tool.

### 3. Capture Output
- For each query, take a **screenshot of the output** and save it (Query1.png, Query2.png, etc.)

---

## Sample Tables
- **Customers(customer_id, name, email, country)**
- **Products(product_id, name, category, price)**
- **Orders(order_id, customer_id, order_date)**
- **OrderDetails(order_detail_id, order_id, product_id, quantity)**

---

## Outcome
By completing this task, you will learn:
- How to filter and sort data
- How to join tables
- How to use aggregate functions
- How to optimize queries using indexes
- How to structure data analysis with views

