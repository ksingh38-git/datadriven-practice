select user_id , max(session_start) as latest_session_start
FROM user_sessions
group by user_id
order by user_id
