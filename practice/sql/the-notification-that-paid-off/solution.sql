with cte as (Select user_id, 
MIN(DATE(transaction_date)) as date_f 
FROM transactions
GROUP BY user_id),
find_products as (Select t.user_id, t.product_id
FROM transactions t
JOIN cte c ON t.user_id = c.user_id 
WHERE DATE(T.TRANSACTION_DATE) = date_f)
SELECT COUNT(distinct t.USER_ID)
FROM transactions t
WHERE NOT EXISTS (SELECT 1 FROM find_products p
where t.user_id = p.user_id
and t.product_id = p.product_id)
