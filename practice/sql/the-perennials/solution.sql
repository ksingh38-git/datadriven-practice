SELECT event_type
FROM event_data
GROUP BY event_type
HAVING COUNT(DISTINCT DATE_FORMAT(event_timestamp, '%Y-%m')) >= 12;
