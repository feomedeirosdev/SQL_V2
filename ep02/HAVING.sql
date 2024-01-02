SELECT  seller_state,
        count(*) AS qtd_sellers

FROM tb_sellers

-- filtro pré agg (GROUP BY)
WHERE seller_state IN ('RJ', 'SP', 'PR', 'AC')

GROUP BY seller_state

-- filtro pós agg (GROUP BY)
HAVING qtd_sellers > 10
