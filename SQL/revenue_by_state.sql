#Revenue by State
select c.customer_state, sum(p.payment_value) as revenue
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.customer_state
order by revenue desc;
