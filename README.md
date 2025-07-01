
#  Sales Trend Analysis Using SQL

This project performs a **monthly sales analysis** on a transactional dataset using **SQL aggregation techniques**. The goal is to extract insights on revenue and order trends over time.

---

##  Dataset Overview

A sample sales dataset containing the following columns:

| Column Name       | Description                    |
| ----------------- | ------------------------------ |
| Transaction\_ID   | Unique ID for each transaction |
| Date              | Transaction date (dd/mm/yyyy)  |
| Customer\_ID      | Unique customer identifier     |
| Gender            | Gender of the customer         |
| Age               | Age of the customer            |
| Product\_Category | Type of product purchased      |
| Quantity          | Number of units bought         |
| Price\_per\_Unit  | Cost per item                  |
| Total\_Amount     | Total revenue per transaction  |

---

##  Objectives

* Extract **month** and **year** from date
* Group data by **month/year**
* Use **`SUM()`** to calculate revenue
* Use **`COUNT(DISTINCT)`** to calculate order volume
* Sort results using **`ORDER BY`**
* Use **`LIMIT`** to find top 3 sales months

---

##  Concepts Used

* `EXTRACT(MONTH/YEAR FROM date)`
* `GROUP BY` and `ORDER BY`
* `SUM()` for total revenue
* `COUNT(DISTINCT Transaction_ID)` for order volume
* `LIMIT` for top-performing months
* `STR_TO_DATE()` for formatting date in MySQL

---

##  Key Queries

###  Monthly Revenue and Order Volume


##  Insights

* Highest revenue was observed in **February and December**
* Products in the **Clothing** category had higher average sales
* **Female customers** contributed significantly to high-value orders

---

##  Tools Used

* **MySQL** (queries written for MySQL 8+)
* **phpMyAdmin / MySQL Workbench** for SQL execution
* Excel (for data visualization, if applicable)


