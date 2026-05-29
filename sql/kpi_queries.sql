-- =========================================
-- SALES PULSE PROJECT
-- KPI & BUSINESS ANALYSIS QUERIES
-- Author: Beginner Data Analyst Project
-- =========================================

--Total Revenue
select sum(sales_amount) AS total_revenue from transactions;

--Total Orders
select count(*) as total_orders from transactions;

--Avg Order Value
select sum(sales_amount) / count(*) as avg_order_value from transactions;

--Business Time Period
select min(date) as start_date, max(date) as end_date from transactions;

--Top 10 Products by Revenue
select product, sum(sales_amount) as revenue from transactions group by product order by revenue desc limit 10;

--Revenue By Market
select market, sum(sales_amount) as revenue from transactions group by market order by revenue desc;

--Monthly Sales Trend 
select year(date) as year, month(date) as month, sum(sales_amount) as revenue from transactions group by year, month order by year, month;


