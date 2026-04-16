-- Customers causing return leakage
SELECT 
    o.customer_id,
    COUNT(r.order_id) AS total_returns,
    SUM(o.total_amount) AS total_spent
FROM orders o
JOIN returns r ON o.order_id = r.order_id
GROUP BY o.customer_id
ORDER BY total_returns DESC
LIMIT 10;


--High-value customers
SELECT 
    customer_id,
    SUM(total_amount) AS lifetime_value
FROM orders
GROUP BY customer_id
ORDER BY lifetime_value DESC
LIMIT 10;

--Risk score
SELECT 
    o.customer_id,
    SUM(o.total_amount) AS lifetime_value,
    COUNT(r.order_id) AS return_count,
    (COUNT(r.order_id) * 1.0 / COUNT(o.order_id)) AS return_rate,
    CASE 
        WHEN (COUNT(r.order_id) * 1.0 / COUNT(o.order_id)) > 0.2 THEN 'HIGH RISK'
        WHEN (COUNT(r.order_id) * 1.0 / COUNT(o.order_id)) > 0.1 THEN 'MEDIUM RISK'
        ELSE 'LOW RISK'
    END AS risk_segment
FROM orders o
LEFT JOIN returns r ON o.order_id = r.order_id
GROUP BY o.customer_id
ORDER BY return_rate DESC;
