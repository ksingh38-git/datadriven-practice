WITH CTE AS (SELECT
  sVC_name,
  alert_id,
  severity,
  status,
  fired_at,
  ROW_NUMBER() OVER (PARTITION BY svc_name ORDER BY fired_at) as rn
FROM
  alert_events
WHERE resolved IS NULL
)
SELECT sVC_name,
  alert_id,
  severity,
  status,
  fired_at
FROM CTE 
WHERE rn = 1
