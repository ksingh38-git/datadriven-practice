
with monthly as (
SELECT team_name , period , SUM(amount) as monthly_cost 
FROM cost_allocs
GROUP BY team_name, period),
distinct_cost as
(SELECT DISTINCT team_name,  monthly_cost
from monthly),
ranked as (SELECT team_name, monthly_cost , ROW_NUMBER() OVER (PARTITION BY team_name
order by monthly_cost DESC) as rn FROM distinct_cost)
SELECT team_name, monthly_cost
FROM ranked
WHERE rn <= 3
ORDER by team_name , monthly_cost DESC
