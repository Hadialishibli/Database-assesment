SELECT p.name as product_name 
FROM products p 
WHERE EXISTS (SELECT 1 FROM order_items oi WHERE oi.product_id = p.product_id) AND p.name LIKE 'J%';
