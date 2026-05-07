with sales_base as (
    select
        o.order_id,
        o.customer_id,
        date(o.order_purchase_timestamp) as order_date,
        oi.product_id,
        oi.price,
        oi.freight_value,
        p.product_category_name,
        pay.payment_value
    from orders o
    join order_items oi on o.order_id = oi.order_id
    join payments pay on o.order_id = pay.order_id
    join products p on oi.product_id = p.product_id
)
select * from sales_base;
