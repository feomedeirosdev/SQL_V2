/* 
Qual a receita de cada categoria de produto?
e o total de vendas?
em unidades e em pedidos?
*/

-- t1 = tb_order_itens
-- t2 = tb_products

SELECT 
    t1.order_id,
    t1.order_item_id,
    t1.product_id,
    t1.seller_id,
    t1.shipping_limit_date,
    t1.price,
    t1.freight_value,
    t2.product_category_name

FROM tb_order_items AS t1

LEFT JOIN tb_products AS t2 
ON t1.product_id = t2.product_id