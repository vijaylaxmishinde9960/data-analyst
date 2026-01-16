import pandas as pd
import os

df = pd.read_csv("Mall_Customers.csv")

df.columns = df.columns.str.lower().str.replace(" ", "_").str.replace("-", "_")

df = df.drop_duplicates()

df = df.dropna()

if 'gender' in df.columns:
    df['gender'] = df['gender'].str.upper().str.strip()

if 'age' in df.columns:
    df['age'] = df['age'].astype(int)

# Step 7: Save the cleaned data
os.makedirs("cleaned_data", exist_ok=True)
df.to_csv("cleaned_data/cleaned_mall_customers.csv", index=False)

print("Cleaned data saved to cleaned_data/cleaned_mall_customers.csv")
