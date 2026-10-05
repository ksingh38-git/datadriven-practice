Select u.user_id , u.username , sum(t.total_amount) as total_spend
from users u 
JOIN transactions t
ON u.user_id = t.user_id
GROUP BY u.user_id, u.username
ORDER by u.username
