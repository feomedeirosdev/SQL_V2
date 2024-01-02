-- Ex03 Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a nome maior que 100

SELECT  product_category_name,
        max(product_name_lenght) AS tam_max_name,
        min(product_name_lenght) AS tam_min_name,
        avg(product_name_lenght) AS tam_med_name

FROM tb_products

WHERE product_description_lenght >= 100

GROUP BY product_category_name