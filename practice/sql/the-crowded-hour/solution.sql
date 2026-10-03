WITH cte AS(SELECT d.device_type,  
CAST(us.session_start as DATE) session_Date, 
 us.user_id AS user_id FROM user_sessions us 
JOIN devices d ON us.device_id = d.device_id 
WHERE us.session_start), 
roll_wind AS(SELECT a.device_type,  a.session_date AS window_start,  
COUNT(DISTINCT b.user_id) AS active_people 
FROM cte a JOIN cte b ON a.device_type = b.device_type
 and b.session_date >= a.session_date
  AND b.session_date < a.session_date + INTERVAL '45 day'
  GROUP BY a.device_type,  a.session_date), 
  ranking AS (Select device_type, window_start , 
  window_start + INTERVAL '45 day' as window_end, active_people
  , row_number() over (partition by device_type order by active_people DESC)
  AS  rn from roll_wind)
  SELECT device_type, WINDOW_START || ' to ' || window_end as window_span
  , active_people as peak_active_users
  FROM
    ranking
  where rn = 1
  order by active_people desc
  limit 3
