SELECT query_id, user_id, search_term, results_count, clicked_result
, query_time 
FROM search_queries
WHERE len(search_term) > 12
AND search_term LIKE '%r' or search_term LIKE '%R'
ORDER BY query_id
