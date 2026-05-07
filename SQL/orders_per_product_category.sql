#Orders per product Category
select ct.product_category_name_english, count(oi.order_id) as total_orders
from order_items oi
join products p on oi.product_id = p.product_id
left join category_translation ct on p.product_category_name = ct.product_category_name
group by ct.product_category_name_english
order by total_orders desc;
