SELECT c.full_name, c.customer_id, 
  SUM(o.total_amount) OVER(PARTITION BY c.customer_id ORDER BY o.order_date ASC) as running_total, 
  COUNT(o.order_id) OVER(PARTITION BY c.customer_id ORDER BY o.order_date ASC) as order_count
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id;
