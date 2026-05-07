WITH first_purchase AS (
    SELECT
        customer_id,
        MIN(DATE_FORMAT(order_date, '%Y-%m')) AS cohort_month
    FROM sales_base
    GROUP BY customer_id
),
cohort_orders AS (
    SELECT
        s.customer_id,
        f.cohort_month,
        DATE_FORMAT(s.order_date, '%Y-%m') AS order_month
    FROM sales_base s
    JOIN first_purchase f ON s.customer_id = f.customer_id
)
SELECT
    cohort_month,
    COUNT(DISTINCT customer_id) AS active_customers
FROM cohort_orders
GROUP BY cohort_month
ORDER BY cohort_month;
