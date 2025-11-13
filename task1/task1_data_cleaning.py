# Step 1: Import essential libraries
import pandas as pd
import numpy as np

# Step 2: Load dataset
data = pd.read_csv("Mall_Customers.csv")
print("✅ Dataset Loaded Successfully!")
print("Shape:", data.shape)
print(data.head())

# Step 3: Check for missing values and duplicates
print("\nMissing Values:\n", data.isnull().sum())
print("\nDuplicate Rows:", data.duplicated().sum())

# Step 4: Clean data
# Remove duplicates
data.drop_duplicates(inplace=True)

# Fill missing values (if any)
data['Age'].fillna(data['Age'].median(), inplace=True)
data['Annual Income (k$)'].fillna(data['Annual Income (k$)'].mean(), inplace=True)
data['Spending Score (1-100)'].fillna(data['Spending Score (1-100)'].mean(), inplace=True)

# Standardize text values in Gender
data['Gender'] = data['Gender'].str.strip().str.title()

# Rename columns for clarity
data.rename(columns={
    'CustomerID': 'customer_id',
    'Gender': 'gender',
    'Age': 'age',
    'Annual Income (k$)': 'annual_income_k',
    'Spending Score (1-100)': 'spending_score'
}, inplace=True)

# Step 5: Check results
print("\n✅ Cleaned Data Overview:")
print(data.info())
print("\nDescriptive Statistics:\n", data.describe())

# Step 6: Save cleaned dataset
data.to_csv("cleaned_mall_customers.csv", index=False)
print("\n📁 Cleaned dataset saved as 'cleaned_mall_customers.csv'")

# Step 7: Summary report
summary = {
    "Total Rows": len(data),
    "Total Columns": len(data.columns),
    "Duplicates Removed": int(data.duplicated().sum()),
    "Missing Values After Cleaning": int(data.isnull().sum().sum())
}

summary_df = pd.DataFrame([summary])
summary_df.to_csv("data_cleaning_summary.csv", index=False)
print("\n📊 Summary report saved as 'data_cleaning_summary.csv'")
