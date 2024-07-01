select * 
from customers c 
join orders o on c.customer_id = o.customer_id 
WHERE o.order_date > CURRENT_DATE() - INTERVAL 500 DAY;
