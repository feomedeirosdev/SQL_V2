-- Ex04 Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 40. Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 100 carcteres

SELECT  product_category_name,
        max(product_name_lenght),
        min(product_name_lenght),
        avg(product_name_lenght)

FROM tb_products

WHERE product_description_lenght >= 100

GROUP BY product_category_name

HAVING avg(product_description_lenght) > 500

ORDER BY avg(product_name_lenght) DESC