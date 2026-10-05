Select query_id, ltrim(search_term) as search_term 
FROM search_queries
ORDER BY query_id
