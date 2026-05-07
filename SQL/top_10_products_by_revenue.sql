#Top 10 Products by Revenue
select p.product_id, ct.product_category_name_english, sum(oi.price) as revenue
from order_items oi
join products p on oi.product_id = p.product_id
left join category_translation ct on p.product_category_name = ct.product_category_name
group by p.product_id, ct.product_category_name_english
order by revenue desc
limit 10;
