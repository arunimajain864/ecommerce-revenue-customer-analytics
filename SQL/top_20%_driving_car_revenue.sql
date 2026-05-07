WITH customer_revenue AS (
    SELECT
        customer_id,
        SUM(payment_value) AS total_revenue
    FROM sales_base
    GROUP BY customer_id
),
ranked_customers AS (
    SELECT *,
           NTILE(5) OVER (ORDER BY total_revenue DESC) AS revenue_bucket
    FROM customer_revenue
)
SELECT
    SUM(total_revenue) AS revenue_from_top_20_percent
FROM ranked_customers
WHERE revenue_bucket = 1;
