select p.name as product_name, o.order_date, c.full_name 
from order_items oi 
join products p on p.product_id = oi.product_id
join orders o on oi.order_id = o.order_id 
join customers c on c.customer_id = o.customer_id;
