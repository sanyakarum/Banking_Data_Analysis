# Banking_Data_Analysis
# 🏦 Banking Customer Analytics Project

## Overview

This project focuses on analyzing banking customer data using Python, MySQL, and Power BI. The objective is to clean and explore the dataset, answer business questions through SQL analysis, and create an interactive dashboard that provides actionable insights into customer behavior, income, deposits, loans, and banking relationships.

---

## Dataset

**Dataset:** Banking Customer Data

The dataset contains customer information such as:

* Customer demographics
* Estimated income
* Bank deposits
* Credit card balances
* Loan information
* Business lending details
* Banking relationship metrics

---

## Tools & Technologies

* **Python** – Data loading, cleaning, and exploratory data analysis (EDA)
* **Pandas, NumPy** – Data manipulation and preprocessing
* **Matplotlib, Seaborn** – Data visualization
* **MySQL** – Business analysis using SQL queries
* **Power BI** – Interactive dashboard creation
* **Jupyter Notebook / VS Code** – Development environment

---

## Project Workflow

### 1. Data Loading

* Imported the banking dataset using Python.
* Examined dataset structure, data types, and missing values.

### 2. Data Cleaning

* Handled missing values.
* Removed duplicates.
* Corrected data inconsistencies.
* Prepared data for analysis and reporting.

### 3. Exploratory Data Analysis (EDA)

* Analyzed customer income distribution.
* Examined deposits, loans, and credit card balances.
* Identified customer segments and trends.
* Generated visualizations to uncover insights.

### 4. SQL Analysis

Performed business-focused analysis using MySQL, including:

* Customer income and deposit comparisons
* Loan and credit card analysis
* Banking relationship evaluation
* Customer segmentation
* Revenue and deposit insights

### 5. Power BI Dashboard

Created an interactive dashboard to visualize:

* Total Customers
* Total Deposits
* Total Loans
* Estimated Income
* Customer Segmentation
* Banking Relationships
* Key Performance Indicators (KPIs)

---

## Dashboard Features

* Interactive filters and slicers
* KPI summary cards
* Customer demographic analysis
* Deposit and loan trends
* Income distribution insights
* Relationship and engagement metrics

---

## Key Results

* Identified high-income customers with low deposits.
* Analyzed customer banking relationships and engagement.
* Discovered trends in deposits, loans, and credit balances.
* Generated actionable insights to support customer retention and business growth.

---

## Project Files

```text
├── Banking_CleanedData.csv
├── Banking_EDA.ipynb
├── Banking_sqlqueries.sql
├── banking_dashboard.pbix
└── README.md
```

---

## How to Run

### Python Analysis

1. Clone the repository.
2. Install required libraries:

```bash
pip install pandas numpy matplotlib seaborn
```

3. Open the Jupyter Notebook.
4. Run all cells to perform data cleaning and EDA.

### MySQL Analysis

1. Create a database in MySQL.
2. Import the cleaned dataset.
3. Execute the SQL queries from:

```sql
Banking_sqlqueries.sql
```

### Power BI Dashboard

1. Open:

```text
banking_dashboard.pbix
```

2. Refresh the data source if required.
3. Explore the dashboard using filters and visualizations.

---

## Conclusion

This project demonstrates an end-to-end data analytics workflow, including data preparation, exploratory analysis, SQL-based business insights, and dashboard development. The combination of Python, MySQL, and Power BI provides a comprehensive view of banking customer behavior and supports data-driven decision-making.
