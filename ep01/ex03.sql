-- Ex03 Crie uma coluna nova que contenha a informação em metros cúbicos

SELECT  product_id,
        -- product_category_name,
        -- product_name_lenght,
        -- product_description_lenght,
        -- product_photos_qty,
        product_weight_g,
        product_length_cm,
        product_height_cm,
        product_width_cm,
        ((product_length_cm * product_height_cm * product_width_cm) / (100 * 100 * 100)) AS volume_m3
        

FROM tb_products

WHERE product_category_name = 'artes'