SELECT u.user_id,u.username,
COUNT(us.session_start) as session_count, 
SUM(us.pages_viewed) as total_pages
FROM users u
JOIN user_sessions us
on u.user_id = us.user_id
WHERE account_status = 'active'
GROUP BY u.user_id, u.username
HAVING SUM(us.pages_viewed) > 100
AND COUNT(us.session_start) > 3
ORDER BY total_pages DESC
