#  Data Analyst Internship - Task 1: Data Cleaning and Preprocessing

###  Objective
The goal of this task is to clean and preprocess a raw dataset by handling missing values, duplicates, inconsistent formats, and standardizing data to make it ready for analysis.

---

###  Dataset
**Name:** Mall Customers Dataset  
**Source:** [Kaggle - Customer Segmentation Data](https://www.kaggle.com/datasets/vjchoudhary7/customer-segmentation-tutorial-in-python)

The dataset contains information about mall customers including their gender, age, annual income, and spending score.

---

###  Tools & Libraries
- Python 3  
- Pandas  
- NumPy  

---

###  Steps Performed

1. **Imported Libraries:** Loaded required Python libraries (`pandas`, `numpy`).
2. **Loaded Dataset:** Read the CSV file (`Mall_Customers.csv`) into a Pandas DataFrame.
3. **Checked for Missing and Duplicate Values:** Used `.isnull().sum()` and `.duplicated().sum()` to identify issues.
4. **Handled Missing Data:** Filled missing values using median and mean where applicable.
5. **Removed Duplicates:** Applied `.drop_duplicates()` to remove repeated rows.
6. **Standardized Text Data:** Cleaned and formatted the `Gender` column for consistency.
7. **Renamed Columns:** Renamed columns to be lowercase and readable (e.g., `Annual Income (k$)` → `annual_income_k`).
8. **Verified Data Types:** Ensured all columns have correct data types.
9. **Saved Cleaned Dataset:** Exported the cleaned file as `cleaned_mall_customers.csv`.
10. **Generated Summary Report:** Created `data_cleaning_summary.csv` with information about cleaning actions.

---

###  Outputs

| File Name | Description |
|------------|-------------|
| `Mall_Customers.csv` | Original dataset |
| `task1_data_cleaning.py` | Python script used for cleaning |
| `cleaned_mall_customers.csv` | Final cleaned dataset |
| `data_cleaning_summary.csv` | Summary of cleaning process |

---

###  Summary of Changes
- Removed duplicate rows  
- Filled missing values with mean/median  
- Standardized gender column (`Male`, `Female`)  
- Renamed columns for better readability  
- Ensured data types were correct  

