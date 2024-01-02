SELECT product_category_name,
       count(*) AS qtd_produtos,
       max(product_weight_g) / 1000 AS maior_peso_kg,
       min(product_weight_g) / 1000 AS menor_peso_kg,
       avg(product_weight_g) / 1000 AS media_peso_kg

FROM tb_products

WHERE product_category_name IS NOT NULL

-- AND product_category_name NOT IN ('artes', 'bebes', 'audio', 'alimentos')
AND product_category_name IN ('artes', 'bebes', 'audio', 'alimentos')

GROUP BY product_category_name