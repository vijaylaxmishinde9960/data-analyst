# Task 1: Data Cleaning with Python & Pandas

## 📋 Overview
This task demonstrates fundamental data cleaning and preprocessing techniques using Python and the Pandas library. The objective is to transform raw customer data into a clean, analysis-ready format.

## 🎯 Objectives
- Clean and standardize column names
- Remove duplicate records
- Handle missing values
- Standardize categorical data
- Convert data types appropriately
- Export cleaned data for downstream analysis

## 📊 Dataset
**File:** `Mall_Customers.csv`

**Description:** Customer demographic and spending data from a shopping mall, including:
- Customer ID
- Gender
- Age
- Annual Income
- Spending Score

## 🛠️ Tools & Technologies
- **Python 3.x**
- **pandas** - Data manipulation and cleaning
- **os** - File system operations

## 📝 Implementation Details

### Data Cleaning Steps

1. **Column Name Standardization**
   - Convert to lowercase
   - Replace spaces with underscores
   - Replace hyphens with underscores
   - Result: Consistent, code-friendly column names

2. **Duplicate Removal**
   - Identify and remove duplicate rows
   - Ensures data integrity

3. **Missing Value Handling**
   - Drop rows with null values
   - Alternative: Could use imputation for larger datasets

4. **Categorical Data Standardization**
   - Convert 'gender' column to uppercase
   - Strip whitespace for consistency

5. **Data Type Conversion**
   - Ensure 'age' column is integer type
   - Proper data types for accurate analysis

6. **Export Cleaned Data**
   - Save to new CSV file
   - Preserve original data

## 🚀 How to Run

```bash
# Navigate to Task_1 directory
cd Task_1

# Run the cleaning script
python ttask-01.py
```

## 📁 Files

| File | Description |
|------|-------------|
| `Mall_Customers.csv` | Original raw dataset |
| `ttask-01.py` | Python cleaning script |
| `cleaned_mall_customers.csv` | Cleaned output dataset |
| `README.md` | This documentation file |

## 📈 Output

**File:** `cleaned_mall_customers.csv`

**Improvements:**
- ✅ Standardized column names
- ✅ No duplicate records
- ✅ No missing values
- ✅ Consistent categorical values
- ✅ Correct data types

## 💡 Key Learnings

1. **Data Quality Matters:** Clean data is essential for accurate analysis
2. **Pandas Efficiency:** Pandas provides powerful tools for data manipulation
3. **Reproducibility:** Scripted cleaning ensures consistent, repeatable results
4. **Documentation:** Always preserve original data and document transformations

## 🔍 Code Highlights

```python
# Standardize column names
df.columns = df.columns.str.lower().str.replace(" ", "_").str.replace("-", "_")

# Remove duplicates and nulls
df = df.drop_duplicates()
df = df.dropna()

# Standardize categorical data
df['gender'] = df['gender'].str.upper().str.strip()
```

## 🎓 Skills Demonstrated

- Data cleaning and preprocessing
- Pandas DataFrame manipulation
- Handling missing and duplicate data
- Data type conversions
- File I/O operations
- Code organization and documentation

## 🔗 Next Steps

After cleaning, this data is ready for:
- Exploratory Data Analysis (EDA)
- Customer segmentation
- Statistical analysis
- Machine learning models
- Visualization and reporting

---

**Task Status:** ✅ Completed  
**Difficulty Level:** Beginner  
**Estimated Time:** 30-45 minutes
