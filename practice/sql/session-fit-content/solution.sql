SELECT 197 as user_id, c.content_id,
c.duration_seconds
FROM content_items c
where c.duration_seconds <=
 (select avg(session_duration_sec) from user_Sessions where user_id = 197)
