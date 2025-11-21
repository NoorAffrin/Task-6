Project Title:

Online Sales Trend Analysis Using MySQL (Task 6)

🎯 Objective

The goal of this project is to analyze monthly revenue and order volume using SQL aggregation techniques.
You will group data by month & year, calculate SUM(amount) for revenue, and COUNT(order_id) for order volume.

🗂 Dataset

The dataset contains sample online sales records with the following fields:

 Column	          Description
order_id	Unique order ID
order_date	Date of the order
amount	        Order amount (₹)
product_id	Product identifier

Dataset file used:
📄 online_sales_dataset.xlsx

🛠 Tools Used

MySQL (Any platform: Workbench / OneCompiler / phpMyAdmin)

SQL Queries for analysis

Excel (dataset)

GitHub for submission

📌 Steps Performed
1. Created the online_sales table

Defined columns for order details.

2. Inserted sample sales data

Added 10+ rows manually (for online compilers).

3. Analyzed Monthly Revenue

Used SUM(amount) grouped by YEAR() and MONTH().

4. Analyzed Monthly Order Volume

Used COUNT(order_id) grouped by date.

5. Combined Revenue + Order Count

Produced a complete monthly trend report.

6. Extracted Top 3 Months by Revenue

Used ORDER BY revenue DESC LIMIT 3.

🧪 SQL Queries Used
📍 Create Table
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

📍 Insert Data
INSERT INTO online_sales VALUES
(1, '2024-01-02', 120.50, 101),
(2, '2024-01-15', 450.00, 104),
(3, '2024-02-10', 300.99, 105),
(4, '2024-02-20', 210.75, 109),
(5, '2024-03-05', 499.00, 102),
(6, '2024-03-18', 150.25, 110),
(7, '2024-04-02', 220.00, 111),
(8, '2024-04-12', 390.45, 115),
(9, '2024-05-01', 175.80, 107),
(10, '2024-05-30', 425.50, 109);

📍 Monthly Revenue
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

📍 Monthly Order Volume
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(order_id) AS total_orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

📍 Combined Monthly Trend
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(order_id) AS total_orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

📍 Top 3 Revenue Months
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY revenue DESC
LIMIT 3;

📸 Screenshots Included

Table creation

Data insertion

Monthly revenue output

Monthly order count output

Combined trend output

Top 3 months output

📦 Files in Repository
Task-6-Sales-Trend-Analysis/
│
├── online_sales_dataset.xlsx
├── sales_trend_analysis.sql
├── README.md

🏁 Outcome

✔ Successfully analyzed sales trends
✔ Understood SQL aggregation functions
✔ Extracted key insights for business decision-making
