select p.name as product_name, s.supplier_name, p.price 
from products p 
join suppliers s ON p.supplier_id = s.supplier_id 
where s.supplier_name = 'Adidos';
