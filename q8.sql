select s.supplier_name, COUNT(p.product_id) as total_products 
from suppliers s
left join products p on s.supplier_id = p.supplier_id
group by s.supplier_id;
