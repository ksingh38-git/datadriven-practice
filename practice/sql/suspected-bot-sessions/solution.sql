SELECT session_id, user_id, session_duration_sec
FROM user_sessions
WHERE session_duration_sec < 100
AND to_char(session_start, 'YYYY') = '2026';
