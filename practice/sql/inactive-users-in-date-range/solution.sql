Select u.username
FROM users u
WHEre
 NOT EXISTS (SELECT 1 FROM user_sessions us where u.user_id = us.user_id
and us.session_start BETWEEN '2026-06-01' and '2026-07-01')
ORDER by u.username
