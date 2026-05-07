#Monthly Sales Trend
select DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') as month, SUM(p.payment_value) as revenue
from orders o
join payments p on o.order_id = p.order_id
group by month
order by month;
