SELECT user_id, username, email
from users u
WHERE not exists
 (select 1 from user_sessions us where u.user_id = us.user_id )
