
SELECT DISTINCT endpoint,LENGTH(TRIM(BOTH '/' FROM endpoint))  
as trimmed_len,
LENGTH(TRIM(BOTH '/' FROM endpoint))
- 
LENGTH(REPLACE(TRIM(BOTH '/' FROM endpoint),'/', '')) + 1 as word_count
FROM api_calls
ORDER BY word_count DESC, endpoint
