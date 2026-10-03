select distinct  user_id from (select e.user_id, e.transaction_date,
lead(transaction_date)
over (PARTITION BY user_id ORDER BY transaction_date) as next_date
FROM transactions e
)
WHERE DATEDIFF('day', transaction_date, next_date) BETWEEN 65 AND 80
ORDER BY user_id
