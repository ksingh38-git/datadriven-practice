with cte as (Select 
date(transaction_date, '-6 days', 'weekday 0' ) as week_start,
quantity
FROM transactions
WHERE transaction_date >= '2026-01-01'
      AND transaction_date < '2026-04-01')

SELECT week_start, SUM(quantity)
FROM cte 
GROUP By week_start
ORDER BY week_start
