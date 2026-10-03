With cte as (
Select us.user_id,
d.device_type,
CAST(us.session_start as date) as session_start
FROM user_sessions us JOIN devices d
ON us.device_id = d.device_id
), 
window_s as (select a.device_type, a.session_start as window_start,
COUNT(distinct b.user_id) as active_user
FROM cte a 
join cte b ON a.device_type = b.device_type
AND b.session_start >= a.session_start
AND b.session_start < a.session_start + INTERVAL '45 day'
GROUP BY a.device_type,
a.session_start), rolling as (Select device_type, window_start,
window_start + INTERVAL '45 day' as window_end, active_user,
ROW_NUMBER() OVER (PARTITION BY device_type ORDER BY active_user DESC) as
rn 
FROM window_s)
Select device_type,
window_start || ' to ' || window_end as window_span,
active_user as peak_active_users
FROM rolling
where rn = 1
order by active_user DESC
LIMIT 3;
