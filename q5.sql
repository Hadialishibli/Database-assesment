select c.full_name, COUNT(cm.comment_id) as total_comments
from customers c
left join comments cm on c.customer_id = cm.customer_id
group by c.customer_id;
