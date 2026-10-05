with user_calc as (select u.username, t.total_amount,t.transaction_id, SUM(t.total_amount) 
over (Partition by u.user_id ) as user_total
FROM users u JOIN transactions t on u.user_id = t.user_id
) Select transaction_id, username , total_amount, ROUND(total_amount/user_total, 3) as spend_share
FROM user_calc
order by username
