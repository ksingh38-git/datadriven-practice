with cte as  (
Select
u.username, 
cast(t.transaction_date as date) as transaction_date,
SUM(t.total_amount) as  total_daily_spend
FROM users u JOIN transactions t
ON u.user_id = t.user_id
WHERE transaction_date >= '2026-03-01'
AND transaction_date < '2026-06-02'
group by u.username, cast(t.transaction_date as date)
),
ranking as  (Select username, transaction_date, total_daily_spend
, dense_rank() over  (partition by transaction_date order by total_daily_spend DESC )
as rnk  FROM CTE)
Select username , transaction_date, total_daily_spend
FROM ranking
WHERE rnk = 1
order by username
