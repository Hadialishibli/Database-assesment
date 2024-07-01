SELECT p.product_id, p.name as product_name, SUM(oi.quantity * oi.price) as total_order_amount
FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id 
GROUP BY oi.product_id 
HAVING total_order_amount > 100;
