-- =========================
-- 02_DATA_LOADING.SQL
-- ETL: Staging → Clean Tables
-- =========================

-- NOTE:
-- Data source: staging_ecommerce
-- Goal: populate normalized tables safely
-- =========================


-- =========================
-- 0. Cleaning (Making sure the tables are empty)

DELETE FROM returns;
DELETE FROM orders;
DELETE FROM products;
DELETE FROM customers;

-- =========================

-- =========================
-- 1. CUSTOMERS (remove duplicates)
-- =========================
INSERT INTO customers (customer_id, customer_age, customer_gender)
SELECT
    customer_id,
    MAX(customer_age) AS customer_age,
    MAX(customer_gender) AS customer_gender
FROM staging_ecommerce
GROUP BY customer_id;


-- =========================
-- 2. PRODUCTS (remove duplicates)
-- =========================
INSERT INTO products (product_id, category, price, discount)
SELECT
    product_id,
    MAX(category),
    MAX(price),
    MAX(discount)
FROM staging_ecommerce
GROUP BY product_id;


-- =========================
-- 3. ORDERS (clean dates + full load)
-- =========================
INSERT INTO orders (
    order_id,
    customer_id,
    product_id,
    order_date,
    delivered_date,
    quantity,
    payment_method,
    region,
    total_amount,
    shipping_cost,
    profit_margin
)
SELECT
    order_id,
    customer_id,
    product_id,

    -- FIX: DD/MM/YYYY → YYYY-MM-DD
    substr(order_date, 7, 4) || '-' ||
    substr(order_date, 4, 2) || '-' ||
    substr(order_date, 1, 2),

    substr(delivered_date, 7, 4) || '-' ||
    substr(delivered_date, 4, 2) || '-' ||
    substr(delivered_date, 1, 2),

    quantity,
    payment_method,
    region,
    total_amount,
    shipping_cost,
    profit_margin
FROM staging_ecommerce;


-- =========================
-- 4. RETURNS (only real returns)
-- =========================
INSERT INTO returns (order_id, request_date, return_reason)
SELECT
    order_id,

    substr(request_date, 7, 4) || '-' ||
    substr(request_date, 4, 2) || '-' ||
    substr(request_date, 1, 2),

    return_reason
FROM staging_ecommerce
WHERE returned = 'Yes';
