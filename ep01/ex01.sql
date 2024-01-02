-- EX01 Quantos produtos tem na categoria artes?

SELECT  count(*) AS 'No_de_linhas',
        count(product_category_name) AS 'No_de_produtos',
        count(DISTINCT product_category_name) AS 'No_prod_distincts'
 
FROM    tb_products

WHERE   (
            product_category_name = 'artes'
        )