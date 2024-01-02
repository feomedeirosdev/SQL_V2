SELECT DISTINCT

CASE
    WHEN product_category_name IS NULL THEN 'descategorizado' 
    ELSE product_category_name 
END AS categoria_fillna

FROM tb_products

ORDER BY product_category_name