SELECT *

FROM (

    SELECT  seller_state,
        count(*) AS qtd_sellers

    FROM tb_sellers

    GROUP BY seller_state

)

WHERE qtd_sellers > 10