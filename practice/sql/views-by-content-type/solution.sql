SELECT
ci.content_type,
COUNT(cv.view_id)
FROM content_views cv
JOIN content_items ci ON cv.content_id = ci.content_id
GROUP BY ci.content_type
