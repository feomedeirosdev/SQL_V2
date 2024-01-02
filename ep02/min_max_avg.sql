SELECT  max(product_weight_g) / 1000 AS maior_peso_kg,
        min(product_weight_g) / 1000 AS menor_peso_kg,
        avg(product_weight_g) / 1000 AS media_peso_kg

FROM    tb_products

WHERE product_category_name = 'artes'