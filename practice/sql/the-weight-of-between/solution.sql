SELECT team_name || ' - ' || svc_name as label,
amount, region
FROM cost_allocs
WHERE amount >= 500 and amount <= 1000
