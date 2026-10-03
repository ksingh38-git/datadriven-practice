WITH cte AS (
  SELECT
    user_id,
    SUM(total_amount) AS total_spend
  FROM transactions
  GROUP BY user_id
),
ranking AS (
  SELECT
    user_id,
    total_spend,
    DENSE_RANK() OVER (
      ORDER BY total_spend DESC
    ) AS rn
  FROM cte
)

SELECT
  user_id, total_spend
FROM ranking
where rn = 3
