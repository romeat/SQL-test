use ProductsAndCategoriesTestDB
go

select product_name as product,
       coalesce(category_name, 'No category') as category
from products as p
left join product_categories as p_c 
  on p.product_id = p_c.product_id

left join categories as c
  on p_c.category_id = c.category_id;