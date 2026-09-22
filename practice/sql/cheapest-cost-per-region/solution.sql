Select region, amount as min_cost FROM
(Select region, amount , 
ROW_NUMBER() OVER (PARTITION BY REGION ORDER BY Amount) as rn
FROM cloud_costs
where amount is not null
)
Where rn = 1
