with cte as (SELECT distinct amount, DENSE_RANK() OVER (ORDER BY AMOUNT) AS RN
FROM cloud_costs)
SELECT amount from cte where rn <=3
