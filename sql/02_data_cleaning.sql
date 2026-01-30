-- Clean and transform raw data into typed analytical table

DROP TABLE IF EXISTS orders_clean;

CREATE TABLE orders_clean AS
SELECT
    row_id::INTEGER AS row_id,
    order_id,

    CASE
        WHEN order_date LIKE '%/%' THEN TO_DATE(order_date, 'MM/DD/YYYY')
        WHEN order_date LIKE '%-%' THEN TO_DATE(order_date, 'DD-MM-YYYY')
        ELSE NULL
    END AS order_date,

    CASE
        WHEN ship_date LIKE '%/%' THEN TO_DATE(ship_date, 'MM/DD/YYYY')
        WHEN ship_date LIKE '%-%' THEN TO_DATE(ship_date, 'DD-MM-YYYY')
        ELSE NULL
    END AS ship_date,

    ship_mode,
    customer_id,
    customer_name,
    segment,
    city,
    state,
    country,
    postcode,
    market,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    sales::NUMERIC AS sales,
    quantity::INTEGER AS quantity,
    discount::NUMERIC AS discount,
    profit::NUMERIC AS profit,
    shipping_cost::NUMERIC AS shipping_cost,
    order_priority
FROM orders_raw;
