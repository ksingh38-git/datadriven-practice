with cte as  (SELECT COST_ID, AMOUNT, SVC_NAME, 'Highest Cost' as cost_type,
Rank() OVER (ORDER BY AMOUNT DESC) as rn 
FROM cloud_costs), low as (SELECT COST_ID, AMOUNT, SVC_NAME, 'Lowest Cost' as cost_type,
Rank() OVER (ORDER BY AMOUNT ) as rn_low
FROM cloud_costs where amount is not null)
SELECT COST_ID, AMOUNT, SVC_NAME,cost_type
FROM CTE 
WHERE RN = 1
UNION ALL
SELECT COST_ID, AMOUNT, SVC_NAME,cost_type
FROM low 
WHERE RN_LOW = 1
