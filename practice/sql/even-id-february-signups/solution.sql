Select user_id, username, email, signup_date, account_status, age_bucket
FROM users
where date_format(signup_date, '%m' ) = '02'
and user_id % 2 = 0
order by user_id
