SELECT category, SUM(AMOUNT)  as total_amount
FROM cost_allocs
GROUP BY category
