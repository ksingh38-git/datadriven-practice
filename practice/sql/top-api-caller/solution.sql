SELECT user_id, COUNT(call_id) as call_count
FROM api_calls
GROUP BY user_id
limit 1
