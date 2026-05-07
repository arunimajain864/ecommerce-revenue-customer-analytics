WITH customer_orders AS (
    SELECT customer_id, COUNT(DISTINCT order_id) AS total_orders
    FROM sales_base
    GROUP BY customer_id
)
SELECT
    ROUND(
        SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*), 2
    ) AS repeat_purchase_rate_percentage
FROM customer_orders;
