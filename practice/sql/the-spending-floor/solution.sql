select u.user_id , u.username, min(t.total_amount) as min_amount
FROM users u JOIN transactions t
ON t.user_id = u.user_id
GROUP BY u.user_id, u.username
ORDER BY min_amount
