# data-engineering_project-2
# 🛒 ShopEase — SQL Data Analysis Project

> **Celebal Technologies Summer Internship — Week 2 Assignment**  
> Analyzing e-commerce sales data using SQL (SQLite)

---

## 📋 Business Context

ShopEase is a mid-sized e-commerce company selling **Electronics**, **Clothing**, and **Home** products across India. As a Junior Data Analyst, the goal is to extract meaningful insights from the company's relational database covering customers, products, orders, and order items.

---

## 🗃️ Database Schema
| Table | Primary Key | Rows |
|-------|------------|------|
| customers | customer_id | 8 |
| products | product_id | 8 |
| orders | order_id | 10 |
| order_items | item_id | 15 |

---

## 🚀 How to Run

### Prerequisites
- [SQLite3](https://sqlite.org/download.html)
- Python 3.x + Jupyter Notebook

### Setup (Windows PowerShell)

```powershell
# Step 1: Create tables
Get-Content schema.sql | .\sqlite3.exe shopease.db

# Step 2: Load data
Get-Content insert_data.sql | .\sqlite3.exe shopease.db

# Step 3: Open Jupyter Notebook
jupyter notebook shopease_analysis.ipynb
```

---

## 📊 Sections Covered

### Section A — SQL Basics (Q1–Q6)
- SELECT all columns, specific columns, DISTINCT values
- Primary Keys, UNIQUE, CHECK constraints

### Section B — Filtering & Optimization (Q7–Q12)
- WHERE clause with status, category, date, price filters
- Index usage and SARGable queries

### Section C — Aggregations (Q13–Q18)
- COUNT, SUM, AVG, MIN, MAX
- GROUP BY with HAVING clause

### Section D — Joins (Q19–Q23)
- INNER JOIN, LEFT JOIN across 3 tables
- Foreign key relationships explained

### Section E — Advanced (Q24–Q27)
- CASE statements for price tiers
- ACID properties explained with real examples
- Full Transaction with BEGIN / COMMIT / ROLLBACK

---

## 🔍 Key Business Insights

| Insight | Finding |
|---|---|
| Top Revenue Status | Delivered orders = highest revenue |
| Most Expensive Category | Electronics — avg ₹2,224 |
| Top Customer | Aarav Sharma — 2 orders |
| Premium Members | 4 out of 8 customers |
| Highest Single Order | ₹7,498 — Rohan Gupta |

---

## 🛠️ Tech Stack

![SQLite](https://img.shields.io/badge/SQLite-003B57?style=flat&logo=sqlite&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=flat&logo=jupyter&logoColor=white)

---

## 👤 Author

**Himanshi**  
Celebal Technologies — Data Engineering Internship 2026