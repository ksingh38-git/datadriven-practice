Select sender_id, COUNT(*) as msg_count
from chat_msgs
where content is NOT NULL
and to_char(sent_at, '%Y') = '2026'
AND CONTENT != ''
GROUP BY sender_id
HAVING count(*) > 2
order by sender_id
