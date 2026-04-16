-- 1. Total Revenue (correct)
SELECT 
    SUM(total_amount) AS total_revenue
FROM orders;
-- 2. Return Loss (CORRECT VERSION)
SELECT 
    SUM(o.total_amount) AS return_loss
FROM orders o
JOIN returns r ON o.order_id = r.order_id;

-- 3. Net Revenue (FIXED)
SELECT 
    SUM(o.total_amount) AS total_revenue,
    COALESCE(SUM(CASE WHEN r.order_id IS NOT NULL THEN o.total_amount END), 0) AS return_loss,
    SUM(o.total_amount) - COALESCE(SUM(CASE WHEN r.order_id IS NOT NULL THEN o.total_amount END), 0) AS net_revenue
FROM orders o
LEFT JOIN returns r ON o.order_id = r.order_id;

-- 4. Return Rate (unchanged, still correct)
SELECT 
    (SELECT COUNT(*) FROM returns) * 1.0 / COUNT(*) AS return_rate
FROM orders;
