with cte as (select svc_name , round(avg(uptime),2) as avg_uptime
FROM svc_health
GRoup by svc_name
having count(distinct check_id) >= 5)
, ranking as  (select svc_name, avg_uptime,
dense_rank() over (order by avg_uptime desc) as rnk
FROM cte
)
SELECT svc_name, avg_uptime, rnk
FROM ranking
WHERE rnk <= 3
