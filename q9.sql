SELECT c.full_name, c.customer_id, MAX(o.total_amount) as max_total_amount
FROM customers c 
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY o.customer_id;
