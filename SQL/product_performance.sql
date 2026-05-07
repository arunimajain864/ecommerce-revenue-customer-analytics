CREATE OR REPLACE VIEW product_performance_view AS
SELECT
    product_id,
    product_category_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(price) AS revenue
FROM sales_base
GROUP BY product_id, product_category_name;
