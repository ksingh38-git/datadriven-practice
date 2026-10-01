Select d.device_type , avg(us.session_duration_sec) as average_session_duration
  FROM user_sessions us
  JOIN devices d ON d.device_id = us.device_id
  GROUP BY d.device_type
  ORDER BY d.device_type
