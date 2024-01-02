-- Ex02 Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria.

SELECT  product_category_name,
        max(product_name_lenght) AS tam_max_name,
        min(product_name_lenght) AS tam_min_name,
        avg(product_name_lenght) AS tam_med_name

FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name