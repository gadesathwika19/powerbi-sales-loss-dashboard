-- Create raw staging table for CSV import

DROP TABLE IF EXISTS orders_raw;

CREATE TABLE orders_raw (
    row_id TEXT,
    order_id TEXT,
    order_date TEXT,
    ship_date TEXT,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    postcode TEXT,
    market TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales TEXT,
    quantity TEXT,
    discount TEXT,
    profit TEXT,
    shipping_cost TEXT,
    order_priority TEXT
);
