create table orders (
    order_id varchar(50) primary key,
    customer_id varchar(50),
    order_status varchar(30),
    order_purchase_timestamp datetime,
    order_approved_at datetime null,
    order_delivered_customer_date datetime null,
    order_estimated_delivery_date datetime null
);