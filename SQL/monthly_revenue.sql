CREATE OR REPLACE VIEW monthly_revenue_view AS
SELECT
    order_month,
    SUM(payment_value) AS monthly_revenue
FROM sales_base
GROUP BY order_month
ORDER BY order_month;
