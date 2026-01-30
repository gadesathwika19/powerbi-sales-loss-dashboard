# 📊 Sales Performance Dashboard (PostgreSQL & Power BI)

## 📌 Project Overview
This project demonstrates an end-to-end data analytics workflow, starting from raw sales data and ending with an executive-level Power BI dashboard.

The objective was to analyse sales performance, profitability, regional trends, and top-performing products.

---

## 🛠 Tools & Technologies
- PostgreSQL
- SQL
- Power BI
- Excel (CSV)

---

## 📂 Dataset
- Global retail sales dataset (~51,000 records)
- Includes orders, customers, products, sales, profit, quantity, discount, and regional information

---

## 🧹 Data Preparation (SQL)
Key steps performed in PostgreSQL:

- Imported raw CSV data into a staging table
- Cleaned and standardised mixed date formats
- Converted text fields into numeric and date types
- Created analytical SQL views for reporting

### SQL Files
- `01_table_creation.sql` – Raw staging table
- `02_data_cleaning.sql` – Data cleaning and transformation
- `03_analytical_views.sql` – Business-ready analytical views

---

## 📐 Data Modelling & DAX (Power BI)
Created key measures including:
- Total Sales
- Total Profit
- Total Orders
- Average Order Value (AOV)

DAX was used to ensure consistent KPI calculations across visuals.

---

## 📊 Dashboard Preview
![Dashboard](screenshots/dashboard.png)

---

## 🎯 Key Insights
- Sales show a clear upward trend over time
- Technology category contributes the highest revenue
- A small number of products drive a large proportion of total sales
- Regional performance varies significantly, highlighting growth opportunities

---

## 🚀 What This Project Demonstrates
- End-to-end data analytics workflow
- Strong SQL data cleaning and transformation skills
- Practical Power BI dashboard development
- Ability to translate data into business insights
