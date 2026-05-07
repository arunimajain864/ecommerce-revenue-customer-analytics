SELECT
    customer_id,
    SUM(payment_value) AS lifetime_value
FROM sales_base
GROUP BY customer_id
ORDER BY lifetime_value DESC
LIMIT 10;
