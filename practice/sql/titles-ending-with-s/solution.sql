Select Content_id, title, content_type,
duration_seconds, creator_id, publish_date
FROM content_items
WHERE title LIKE '%s'
ORDER by title, content_id
