SELECT DISTINCT coalesce(product_category_name, 'descategorizados') AS categorial_fillna

FROM tb_products

ORDER BY product_category_name