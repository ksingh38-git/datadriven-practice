Select distinct user_id from (
Select user_id , transaction_date, lead(transaction_date)
OVER (partition by user_id ORDER by transaction_date) as next_date
FROM transactions
) where datediff('day', transaction_date, next_date) BETWEEN 65 AND 80
ORDER BY user_id
