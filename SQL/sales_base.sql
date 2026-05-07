CREATE OR REPLACE VIEW sales_base AS
SELECT
    o.order_id,
    o.customer_id,
    DATE(o.order_purchase_timestamp) AS order_date,
    oi.product_id,
    oi.price,
    oi.freight_value,
    p.product_category_name,
    pay.payment_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN payments pay ON o.order_id = pay.order_id
JOIN products p ON oi.product_id = p.product_id;
