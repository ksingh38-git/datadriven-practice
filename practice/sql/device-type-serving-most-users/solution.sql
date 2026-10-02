With cte as (
SELECT COUNT(DISTINCT user_id) as user_count, 
d.device_type
FROM user_sessions u
JOIN devices d
ON u.device_id = d.device_id
group by d.device_type
 ), info as  (
SELECT user_count, device_type ,
rank() over (order by user_count DESC) as rn
from cte 
)
Select device_type, user_count
FROM info 
WHERE rn = 1
ORDER BY user_count desc
