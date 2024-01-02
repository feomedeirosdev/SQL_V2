SELECT  product_id,
        product_category_name,
        product_photos_qty

FROM    tb_products

WHERE   (product_category_name = 'artes' AND product_photos_qty > 1)
        OR
        (product_category_name = 'perfumaria' AND product_photos_qty > 3)   





