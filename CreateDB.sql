drop database if exists ProductsAndCategoriesTestDB
go

create database ProductsAndCategoriesTestDB;
go

use ProductsAndCategoriesTestDB;

create table products 
(
	product_id int primary key identity,
	product_name nvarchar (100) not null
)
go

create table categories
(
	category_id int primary key identity,
	category_name nvarchar (100) not null
)
go

create table product_categories
(
	id int primary key identity, 
	product_id int references products(product_id),
	category_id int references categories(category_id)
)