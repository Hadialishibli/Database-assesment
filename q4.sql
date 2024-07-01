select p.name as product_name, SUM(oi.quantity) as total_quantity 
from order_items oi 
join products p on p.product_id = oi.product_id 
group by p.product_id;
