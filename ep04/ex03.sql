/* 
Qual é o peso médio dos produtos vendidos por selles de cada estado?
*/

SELECT t1.*

FROM tb_sellers AS t1

LEFT JOIN tb_order_items AS t2
ON t1.seller_id = t2.seller_id