Select user_id, COUNT(*) as total_views
FROM page_views
where CAST(viewed_at AS DATETIME) >= NOW() - INTERVAL 30 DAYS
GROUP BY user_id
