CREATE OR REPLACE VIEW customer_revenue_view AS
SELECT
    customer_id,
    SUM(payment_value) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_base
GROUP BY customer_id;
