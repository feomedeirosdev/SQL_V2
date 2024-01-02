/* 
Qual é o valor total de receita gerada por vendedores de cada estado? Considere a base completa, com apenas pedidos entregues
*/

-- t1 = tb_sellers
-- t2 = tb_order_items
-- t3 = tb_orders

SELECT      t1.seller_state,
            round(sum(t2.price), 2) AS receita_R$

FROM        tb_sellers AS t1

LEFT JOIN   tb_order_items AS t2
ON          t1.seller_id = t2.seller_id

LEFT JOIN   tb_orders AS t3
ON          t2.order_id = t3.order_id

WHERE       order_status = 'delivered'

GROUP BY    seller_state

ORDER BY    receita_R$ DESC


