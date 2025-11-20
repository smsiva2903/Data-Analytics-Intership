# Task 5 – Exploratory Data Analysis (EDA)

##  Objective
The goal of this task is to perform Exploratory Data Analysis (EDA) on the **Titanic dataset** to understand passenger demographics, survival patterns, and important relationships between variables.  
The task includes loading data, cleaning, visualization, and summarizing key insights.

---

##  Dataset Used
**Dataset Name:** Titanic - train.csv  
**Source:** Kaggle – Titanic: Machine Learning from Disaster

The dataset contains 891 passenger records with the following columns:

- PassengerId  
- Survived  
- Pclass  
- Name  
- Sex  
- Age  
- SibSp  
- Parch  
- Ticket  
- Fare  
- Cabin  
- Embarked  

---

##  Tools & Libraries Used
- Python  
- Jupyter Notebook  
- Pandas  
- NumPy  
- Matplotlib  
- Seaborn  

---

##  Steps Performed in EDA
1. **Loaded the dataset** (`train.csv`) using Pandas  
2. **Checked data structure** using:
   - `df.head()`  
   - `df.info()`  
   - `df.describe()`  
   - `df.isnull().sum()`  
3. **Univariate Analysis**
   - Survival Count  
   - Age Distribution  
   - Passenger Class Count  
4. **Bivariate Analysis**
   - Survival by Gender  
   - Survival by Passenger Class  
   - Age vs Survival (Boxplot)  
5. **Multivariate Analysis**
   - Pairplot (Age, Fare, Pclass, Survived)  
   - Correlation Heatmap (numeric columns only)  
6. **Handling Missing Values**
   - Filled missing Age values with median  
   - Filled missing Embarked values with mode  
7. **Summary of Insights**

All code and visuals are included in the notebook and PDF report.

---

##  Visualizations Included
- Countplot: Survived vs Not Survived  
- Histogram: Age distribution  
- Countplot: Passenger Class  
- Countplot: Gender vs Survival  
- Countplot: Pclass vs Survival  
- Boxplot: Age vs Survival  
- Pairplot  
- Correlation Heatmap  

---

##  Key Insights from EDA
1. **Females had a much higher survival rate than males.**  
2. **1st Class passengers survived more** than 2nd and 3rd class.  
3. **Younger passengers** showed slightly higher survival.  
4. **Fare is positively correlated with survival** (higher fare → higher chance of survival).  
5. **Age had missing values**, which were filled using median.  
6. **Cabin has many missing values**, and can be dropped in future modeling.  
7. No very strong correlations exist between most numerical features.

---

##  Repository Files
- `Task5_EDA.pdf` – Exported PDF report of notebook  
- `train.csv` – Titanic dataset  
- `README.md` – Documentation (this file)

---


