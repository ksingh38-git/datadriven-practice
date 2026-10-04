SELECT 
    user_id, 
    username, 
    email, 
    signup_date,
    account_status,
    age_bucket
FROM users 
WHERE 
    -- Exclude suspended or pending accounts
    account_status NOT IN ('suspended', 'pending_verification')
    -- Exclude test accounts with 'z', while preserving NULL emails
    AND (email NOT LIKE '%z%' OR email IS NULL)
ORDER BY 
    username ASC;
