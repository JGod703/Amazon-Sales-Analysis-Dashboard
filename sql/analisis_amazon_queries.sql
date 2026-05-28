use SalesAmazonDb

select * from amazon_sales_cleaned;

--Revisar categorias existentes
select distinct main_category from amazon_sales_cleaned;

--Top 10 productos mejor calificados
select top 10 product_name, rating from amazon_sales_cleaned order by rating desc;

--Top 10 productos con mas reviews
select top 10 product_name, rating_count from amazon_sales_cleaned order by rating_count desc;

--Promedio de rating por categoria
select main_category, avg(rating) as avg_rating from amazon_sales_cleaned group by main_category;