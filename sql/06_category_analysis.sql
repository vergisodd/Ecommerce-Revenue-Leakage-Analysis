-- =========================
-- 06_CATEGORY_ANALYSIS.SQL
-- Category-Level Performance Analysis
-- =========================


-- 1. Revenue by category
SELECT 
    p.category,
    SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;


-- 2. Return rate by category
SELECT 
    p.category,
    COUNT(r.order_id) * 1.0 / COUNT(o.order_id) AS return_rate
FROM orders o
JOIN products p ON o.product_id = p.product_id
LEFT JOIN returns r ON o.order_id = r.order_id
GROUP BY p.category
ORDER BY return_rate DESC;


-- 3. Return impact by category (financial loss)
SELECT 
    p.category,
    SUM(o.total_amount) AS revenue_lost
FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN returns r ON o.order_id = r.order_id
GROUP BY p.category
ORDER BY revenue_lost DESC;
