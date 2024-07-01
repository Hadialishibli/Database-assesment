select c.full_name, c.email_address, COALESCE(MAX(o.order_date), 'No orders') as last_order_date 
from customers c 
left join orders o on o.customer_id = c.customer_id 
group by c.customer_id;
