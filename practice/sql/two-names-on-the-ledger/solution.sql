with cte as  (
Select t.transaction_id,
u.username,
total_amount
FROM transactions t JOIN users u ON t.user_id = u.user_id
where u.username = 'alice'
UNION ALL Select t.transaction_id,
u.username,
total_amount
FROM transactions t JOIN users u ON t.user_id = u.user_id
where u.username = 'aaron42')
Select transaction_id,
username , total_amount, SUM(total_amount) OVER (order by transaction_id) as running_total
FROM cte
ORDER by transaction_id
