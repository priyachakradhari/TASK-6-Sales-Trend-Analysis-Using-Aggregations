create database sales_db;
select * from retail_sales_dataset;

-- 1. Extract Month and Year from Date
SELECT 
  Transaction_ID,
  STR_TO_DATE(Date, '%d/%m/%Y') AS formatted_date,
  EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS month,
  EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS year
FROM retail_sales_dataset;


-- 2. GROUP BY year/month.
SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS year,
  EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS month,
  SUM(Total_Amount) AS monthly_revenue
FROM retail_sales_dataset
GROUP BY year, month
ORDER BY year, month;

-- 3.Use SUM() for revenue.
SELECT 
  SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset;

-- 4.COUNT(DISTINCT order_id) for volume.
SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS year,
  EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS month,
  COUNT(DISTINCT Transaction_ID) AS monthly_order_volume
FROM retail_sales_dataset
GROUP BY year, month
ORDER BY year, month;

-- 5.Use ORDER BY for sorting.
SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS year,
  EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS month,
  SUM(Total_Amount) AS revenue
FROM retail_sales_dataset
GROUP BY year, month
ORDER BY revenue DESC;

-- 6.Limit results for specific time periods.
SELECT 
  EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS month,
  SUM(Total_Amount) AS revenue_2023
FROM retail_sales_dataset
WHERE EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d/%m/%Y')) = 2023
GROUP BY month
ORDER BY month;

SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS year,
  EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d/%m/%Y')) AS month,
  SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;


