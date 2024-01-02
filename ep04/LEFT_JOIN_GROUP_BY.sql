/* 
Qual a receita de cada categoria de produto?
e o total de vendas?
em unidades e em pedidos?
considerando as vendas de 2017 e pedidos entregues
*/

-- t1 = tb_order_itens
-- t2 = tb_products
-- t3 = tb_orders

SELECT      coalesce(t2.product_category_name, 'descategorizados') AS product_category_name,
            REPLACE(round(sum(t1.price), 2), '.', ',') AS receita_R$,
            count(t1.order_id) AS tot_items_vendidos,
            count(DISTINCT t1.order_id) AS qtde_pedidos,
            REPLACE(round(count(t1.order_id) / cast(count(DISTINCT t1.order_id) AS FLOAT), 2), '.', ',') AS avg_item_por_pedido,
            t3.order_status,
            t3.order_approved_at
  
FROM        tb_order_items AS t1

LEFT JOIN   tb_products AS t2 
ON          t1.product_id = t2.product_id

LEFT JOIN   tb_orders AS t3
ON          t1.order_id = t3.order_id

WHERE t3.order_status = 'delivered'
AND strftime('%Y', t3.order_approved_at) = '2017'

GROUP BY    t2.product_category_name

ORDER BY    t3.order_approved_at DESC;
