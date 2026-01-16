# Task 5: Exploratory Data Analysis (EDA) - Titanic Dataset

## 📋 Overview
This task demonstrates comprehensive Exploratory Data Analysis (EDA) techniques using the famous Titanic dataset. The analysis uncovers patterns, relationships, and insights about passenger survival through statistical analysis and visualization.

## 🎯 Objectives
- Perform thorough exploratory data analysis
- Generate univariate and bivariate visualizations
- Identify correlations between variables
- Extract insights about survival patterns
- Document findings in a reproducible format

## 📊 Dataset
**Source:** Titanic Dataset (Kaggle)

**File:** `titanic.zip` (contains train.csv)

**Features:**
- **PassengerId:** Unique identifier
- **Survived:** Survival status (0 = No, 1 = Yes)
- **Pclass:** Passenger class (1st, 2nd, 3rd)
- **Name:** Passenger name
- **Sex:** Gender
- **Age:** Age in years
- **SibSp:** Number of siblings/spouses aboard
- **Parch:** Number of parents/children aboard
- **Ticket:** Ticket number
- **Fare:** Ticket fare
- **Cabin:** Cabin number
- **Embarked:** Port of embarkation (C=Cherbourg, Q=Queenstown, S=Southampton)

## 🛠️ Tools & Technologies
- **Python 3.x**
- **pandas** - Data manipulation
- **NumPy** - Numerical operations
- **matplotlib** - Basic plotting
- **seaborn** - Statistical visualizations
- **Jupyter Notebook** - Interactive analysis

## 📊 Analysis Components

### 1. Data Understanding
```python
df.info()        # Data types and missing values
df.describe()    # Statistical summary
df.isnull().sum() # Missing value count
```

**Findings:**
- 891 passengers in dataset
- Missing values in Age, Cabin, and Embarked
- Mix of numerical and categorical features

### 2. Univariate Analysis

#### Survival Distribution
- **Visualization:** Count plot
- **Insight:** ~38% survival rate overall

#### Gender Distribution
- **Visualization:** Count plot
- **Insight:** More male passengers than female

#### Passenger Class Distribution
- **Visualization:** Count plot
- **Insight:** Majority were 3rd class passengers

#### Age Distribution
- **Visualization:** Histogram
- **Insight:** Most passengers aged 20-40 years

#### Fare Distribution
- **Visualization:** Histogram
- **Insight:** Right-skewed, most paid lower fares

### 3. Bivariate Analysis

#### Survival by Gender
- **Visualization:** Count plot with hue
- **Insight:** Female passengers had MUCH higher survival rate
- **Conclusion:** "Women and children first" policy evident

#### Survival by Class
- **Visualization:** Count plot with hue
- **Insight:** 1st class passengers had highest survival rate
- **Conclusion:** Socioeconomic status affected survival chances

#### Age Distribution by Class
- **Visualization:** Box plot
- **Insight:** 1st class passengers slightly older on average
- **Conclusion:** Class correlates with age demographics

### 4. Correlation Analysis

**Method:** Heatmap of correlation matrix

**Key Correlations:**
- **Fare ↔ Pclass:** Negative correlation (higher class = higher fare)
- **Survived ↔ Sex:** Strong correlation (gender major factor)
- **Survived ↔ Pclass:** Negative correlation (lower class = lower survival)
- **Survived ↔ Fare:** Positive correlation (higher fare = better survival)

## 🔍 Key Findings

### Major Insights

1. **Gender was the strongest predictor of survival**
   - Female survival rate: ~74%
   - Male survival rate: ~19%
   - Clear evidence of "women and children first" protocol

2. **Passenger class significantly impacted survival**
   - 1st class: ~63% survival
   - 2nd class: ~47% survival
   - 3rd class: ~24% survival
   - Socioeconomic factors played crucial role

3. **Age had moderate influence**
   - Children had slightly better survival rates
   - Elderly passengers faced challenges
   - Most victims were young adult males

4. **Fare correlated with survival**
   - Higher fare passengers (1st class) survived more
   - Economic status provided advantages (better cabin locations, priority access to lifeboats)

5. **Family size considerations**
   - Small families had better survival rates
   - Very large families struggled
   - Solo travelers faced challenges

## 📁 Files

| File | Description |
|------|-------------|
| `titanic.zip` | Compressed dataset |
| `titanic_eda.ipynb` | Jupyter notebook with full analysis |
| `titanic_eda.pdf` | PDF export of notebook |
| `README.md` | This documentation file |

## 🚀 How to Run

```bash
# Extract dataset
unzip titanic.zip

# Install required packages
pip install pandas numpy matplotlib seaborn jupyter

# Launch Jupyter Notebook
jupyter notebook titanic_eda.ipynb
```

## 📊 Visualizations Included

1. ✅ Survival count plot
2. ✅ Gender distribution
3. ✅ Passenger class distribution
4. ✅ Age histogram
5. ✅ Fare histogram
6. ✅ Survival by gender (bivariate)
7. ✅ Survival by class (bivariate)
8. ✅ Age distribution by class (box plot)
9. ✅ Correlation heatmap

## 🎓 Skills Demonstrated

- Exploratory Data Analysis (EDA)
- Statistical analysis
- Data visualization
- Univariate analysis
- Bivariate analysis
- Correlation analysis
- Pattern recognition
- Insight extraction
- Jupyter Notebook proficiency
- Scientific Python stack (pandas, NumPy, matplotlib, seaborn)

## 💡 Key Learnings

1. **EDA is Essential:** Understanding data before modeling is crucial
2. **Visualization Power:** Charts reveal patterns not obvious in raw data
3. **Multiple Perspectives:** Combine univariate and bivariate analysis
4. **Context Matters:** Historical context (Titanic disaster) validates findings
5. **Reproducibility:** Jupyter notebooks enable reproducible analysis

## 📈 Practical Applications

This EDA approach applies to:
- **Customer Segmentation:** Identify customer groups and behaviors
- **Risk Assessment:** Understand factors affecting outcomes
- **Feature Engineering:** Identify important variables for ML models
- **Business Intelligence:** Extract actionable insights from data
- **Hypothesis Testing:** Validate or refute business assumptions

## 🔗 Next Steps

After EDA, typical next steps include:
- Feature engineering for machine learning
- Predictive modeling (classification)
- Advanced statistical testing
- Deeper dive into specific patterns
- Presentation to stakeholders

## 🔗 Related Tasks

- **Task 1:** Data cleaning (prerequisite skill)
- **Task 2:** Data visualization techniques
- **Task 7:** Python + data integration

---

**Task Status:** ✅ Completed  
**Difficulty Level:** Intermediate  
**Estimated Time:** 2-3 hours  
**Key Skill:** Exploratory Data Analysis
