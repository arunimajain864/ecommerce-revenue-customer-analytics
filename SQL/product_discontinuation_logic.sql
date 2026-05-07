WITH product_perf AS (
    SELECT
        product_id,
        COUNT(DISTINCT order_id) AS total_orders,
        SUM(price) AS revenue
    FROM sales_base
    GROUP BY product_id
)
SELECT *
FROM product_perf
WHERE total_orders < 5 AND revenue < 500
ORDER BY revenue;
