use ProductsAndCategoriesTestDB
go

set identity_insert products on
insert into products (product_id, product_name) values 
(1, 'Lenovo Legion'),
(2, 'HP Elitebook'),
(3, 'Apple Macbook'),
(4, 'Backpack')
set identity_insert products off

set identity_insert categories on
insert into categories (category_id, category_name) values
(1, 'Laptops'),
(2, 'Gaming')
set identity_insert categories off
go

insert into product_categories (product_id, category_id) values
(1, 1),
(1, 2),
(2, 1),
(3, 1)
