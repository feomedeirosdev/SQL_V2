-- Ex04 Quantos produtos de belez_saude com menos de 1 litro

SELECT  count(*) AS qtd_prod_beleza_saude
        -- product_length_cm * product_height_cm * product_width_cm / 1000 AS volume_l

FROM    tb_products

WHERE   (
            product_category_name = 'beleza_saude' AND
            product_length_cm * product_height_cm * product_width_cm / 1000 < 1
        )