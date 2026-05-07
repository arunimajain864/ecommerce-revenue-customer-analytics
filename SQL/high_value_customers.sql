#High Value Customers
select c.customer_id, c.customer_city, c.customer_state, sum(p.payment_value) as total_spent
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.customer_id, c.customer_city, c.customer_state
order by total_spent desc
limit 10;
