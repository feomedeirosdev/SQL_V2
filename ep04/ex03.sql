/* 
Qual é o peso médio dos produtos vendidos por vendedores de cada estado?
*/

SELECT      t1.seller_state,
            round(avg(t3.product_weight_g), 2) AS med_peso_prod_g

FROM        tb_sellers AS t1

LEFT JOIN   tb_order_items AS t2
ON          t1.seller_id = t2.seller_id

LEFT JOIN   tb_products AS t3
ON t2.product_id = t3.product_id

GROUP BY seller_state