-- Create analytical views for reporting and Power BI dashboards


-- Monthly sales performance
CREATE OR REPLACE VIEW vw_monthly_sales AS
SELECT
    DATE_TRUNC('month', order_date) AS order_month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders_clean
WHERE order_date IS NOT NULL
GROUP BY DATE_TRUNC('month', order_date);


-- Regional sales performance
CREATE OR REPLACE VIEW vw_regional_sales AS
SELECT
    region,
    DATE_TRUNC('month', order_date) AS order_month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders_clean
WHERE order_date IS NOT NULL
GROUP BY region, DATE_TRUNC('month', order_date);


-- Product sales performance
CREATE OR REPLACE VIEW vw_product_sales AS
SELECT
    category,
    sub_category,
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM orders_clean
GROUP BY category, sub_category, product_name;
