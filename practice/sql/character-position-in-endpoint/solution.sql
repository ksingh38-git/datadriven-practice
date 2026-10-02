SELECT call_id , endpoint,
CHARINDEX('s', LOWER(endpoint)) as s_position
FROM api_calls
WHERE method = 'POST' or method = 'post'
ORDER BY call_id
