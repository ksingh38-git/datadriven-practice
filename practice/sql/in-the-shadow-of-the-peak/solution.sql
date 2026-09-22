WITH CTE AS(

SELECT lower(provider) as provider, 
DENSE_RANK() OVER (PARTITION BY lower(PROVIDER) ORDER BY AMOUNT DESC)
AS rn, 
AMOUNT 
FROM cloud_costs)
SELECT DISTINCT provider, amount
FROM CTE
WHERE rn = 2
order by amount desc
