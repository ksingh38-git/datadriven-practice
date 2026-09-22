SELECT d.device_type, ROUND(AVG(us.session_duration_sec),3) as avg_session_duration
FROM user_sessions us
JOIN devices d ON us.device_id = d.device_id
GROUP BY d.device_type
ORDER BY d.device_type
