# Task 7: Python + SQL Integration for Sales Analysis

## 📋 Overview
This task demonstrates the integration of Python with SQL databases to perform automated data analysis and visualization. It showcases how to connect to a SQLite database, execute SQL queries, process results with pandas, and generate visualizations programmatically.

## 🎯 Objectives
- Connect Python to SQLite database
- Execute SQL queries from Python
- Process query results with pandas
- Generate automated visualizations
- Create reusable analysis scripts
- Demonstrate end-to-end data pipeline

## 📊 Dataset
**File:** `sales_data.db` (SQLite database)

**Schema:**
```sql
Table: sales
- product (TEXT)
- quantity (INTEGER)
- price (REAL)
- Additional fields as applicable
```

**Contents:** Sales transaction data including products, quantities, and prices

## 🛠️ Tools & Technologies
- **Python 3.x**
- **sqlite3** - Database connectivity
- **pandas** - Data manipulation
- **matplotlib** - Visualization
- **SQLite** - Lightweight database

## 📝 Implementation Details

### Script Overview: `sales_summary.py`

The script performs the following operations:

1. **Database Connection**
   ```python
   conn = sqlite3.connect("sales_data.db")
   ```

2. **SQL Query Execution**
   ```sql
   SELECT 
       product, 
       SUM(quantity) AS total_qty, 
       SUM(quantity * price) AS revenue 
   FROM sales 
   GROUP BY product
   ```

3. **Data Processing**
   ```python
   df = pd.read_sql_query(query, conn)
   ```

4. **Console Output**
   - Print sales summary to terminal
   - Display product-wise revenue

5. **Visualization Generation**
   - Create bar chart of revenue by product
   - Save chart as PNG image
   - Display interactive plot

6. **Resource Cleanup**
   ```python
   conn.close()
   ```

## 🚀 How to Run

```bash
# Navigate to Task_7 directory
cd Task_7

# Ensure required packages are installed
pip install pandas matplotlib

# Run the analysis script
python sales_summary.py
```

## 📁 Files

| File | Description |
|------|-------------|
| `sales_data.db` | SQLite database with sales data |
| `sales_summary.py` | Python script for analysis |
| `sales_chart.png` | Generated revenue chart |
| `README.md` | This documentation file |

## 📊 Output

### Console Output
```
Sales Summary:
     product  total_qty  revenue
0  Product A        150  4500.00
1  Product B        200  6000.00
2  Product C        100  3500.00
```

### Visual Output
**File:** `sales_chart.png`

**Chart Type:** Bar chart  
**X-axis:** Product names  
**Y-axis:** Revenue  
**Title:** Revenue by Product

## 🔍 Key Features

### SQL Aggregation
- **GROUP BY:** Aggregate sales by product
- **SUM():** Calculate total quantity and revenue
- **Calculated Fields:** Revenue = quantity × price

### Python Integration
- **Database Connectivity:** sqlite3 module
- **Query Execution:** Execute SQL from Python
- **Data Processing:** pandas DataFrame manipulation
- **Automation:** Repeatable analysis pipeline

### Visualization
- **Automated Charts:** Generate plots programmatically
- **File Export:** Save charts for reporting
- **Customization:** Titles, labels, formatting

## 🎓 Skills Demonstrated

- Python-SQL integration
- Database connectivity (sqlite3)
- SQL query writing (aggregation, GROUP BY)
- pandas DataFrame operations
- Data visualization with matplotlib
- Script automation
- File I/O operations
- Resource management (connection closing)

## 💡 Key Learnings

1. **Integration Power:** Combine SQL's query power with Python's flexibility
2. **Automation:** Scripts enable repeatable, scheduled analysis
3. **Pandas Integration:** `read_sql_query()` seamlessly converts SQL results to DataFrames
4. **Visualization:** Programmatic chart generation for reporting
5. **Best Practices:** Always close database connections

## 📈 Practical Applications

This approach is valuable for:
- **Automated Reporting:** Schedule daily/weekly sales reports
- **Data Pipelines:** Extract, transform, and visualize data
- **Business Intelligence:** Connect to production databases
- **Dashboard Backends:** Power real-time dashboards
- **ETL Processes:** Extract and transform data for analysis

## 🔧 Extending This Script

### Add More Visualizations
```python
# Pie chart for market share
df.plot(kind='pie', y='revenue', labels=df['product'], autopct='%1.1f%%')
plt.savefig('market_share.png')
```

### Time-Series Analysis
```sql
SELECT 
    DATE(order_date) as date,
    SUM(quantity * price) as daily_revenue
FROM sales
GROUP BY DATE(order_date)
ORDER BY date
```

### Export to Excel
```python
df.to_excel('sales_summary.xlsx', index=False)
```

### Email Reports
```python
import smtplib
from email.mime.image import MIMEImage
# Attach sales_chart.png and send via email
```

## 🔗 Database Schema

To recreate the database:
```sql
CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    product TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    price REAL NOT NULL,
    order_date DATE
);

INSERT INTO sales (product, quantity, price) VALUES
    ('Product A', 50, 30.00),
    ('Product B', 75, 40.00),
    ('Product C', 30, 35.00);
```

## 🔗 Related Tasks

- **Task 1:** Python data manipulation
- **Task 2:** Visualization techniques
- **Task 4:** SQL query writing
- **Task 5:** Data analysis workflow

---

**Task Status:** ✅ Completed  
**Difficulty Level:** Intermediate  
**Estimated Time:** 1-2 hours  
**Key Skill:** Python-SQL Integration & Automation
