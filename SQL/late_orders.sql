#Late Orders
select COUNT(*) as late_orders
from orders
where order_delivered_customer_date > order_estimated_delivery_date;
