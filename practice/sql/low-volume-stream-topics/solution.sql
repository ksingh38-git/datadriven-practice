Select topic, COUNT(*) as msg_count
FROM stream_msgs
GROUP BY topic
HAVING COUNT(*) < 6
