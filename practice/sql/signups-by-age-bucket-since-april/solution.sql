SELECT age_bucket , COUNT(SIGNUP_DATE) as user_count
FROM users 
where signup_date >= '2026-04-01'
GROUP by age_bucket
ORDER BY user_count DESC , age_bucket
