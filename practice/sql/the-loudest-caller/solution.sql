WITH cte AS (
  SELECT
    owner_id,
    SUM(requests) AS volume
  FROM api_tokens
  GROUP BY owner_id
),
ranking AS (
  SELECT
    owner_id,
    volume,
    DENSE_RANK() OVER (order by volume desc) as rn
  FROM cte
    )


SELECT DISTINCT
  a.scope
FROM api_tokens a
WHERE NOT exists (
  SELECT
    1
  FROM ranking r
JOIN api_tokens t
  ON r.owner_id = t.owner_id
WHERE r.rn = 1
and t.scope = a.scope
)
ORDER BY scope
