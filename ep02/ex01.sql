-- Ex01 Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

SELECT  product_category_name,
        max(product_description_lenght) AS tam_max_desc,
        min(product_description_lenght) AS tam_min_desc,
        avg(product_description_lenght) AS tam_med_desc

FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name