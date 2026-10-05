SELECT
  SUM(
    CASE
      WHEN EXPIRES IS NULL THEN 1
      ELSE 0
    END
    ) * 100 / COUNT(*) AS perpetual_pct
FROM api_tokens
