/* 
Qual é o valor total de receita gerada por clientes de cada estado? Considere a base completa, com apenas pedidos entregues
*/

-- t1 = tb_customers
-- t2 = tb_orders
-- t3 = tb_order_items


SELECT      t1.customer_state,
            REPLACE(round(sum(t3.price), 2), '.', ',') AS receita

FROM        tb_customers AS t1

LEFT JOIN   tb_orders AS t2
ON          t1.customer_id = t2.customer_id

LEFT JOIN   tb_order_items AS t3
ON          t2.order_id = t3.order_id

WHERE       order_status = 'delivered'

GROUP BY    t1.customer_state