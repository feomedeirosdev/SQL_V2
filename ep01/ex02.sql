-- EX02 Quantos produtos tem mais de 5 litros

SELECT  count(*) AS No_de_linhas,
        count(DISTINCT product_id) AS No_prod_distinct

FROM    tb_products

WHERE   (
            product_length_cm * product_height_cm * product_width_cm / 1000 > 5
        )