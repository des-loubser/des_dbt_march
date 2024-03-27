WITH payments AS (
    SELECT *
    FROM {{ref('stg_payments')}}
)


SELECT 
    order_id,
    SUM(amount)
FROM payments
GROUP BY order_id
HAVING SUM(amount) < 0
 