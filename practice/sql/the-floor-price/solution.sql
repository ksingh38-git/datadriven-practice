with cte as  (
Select upper(provider) as provider, amount,
 DENSE_RANK() over (PARTITION BY upper(provider) ORDER BY amount DESC)
as rn 
from cloud_costs where acct_id is not null
) select DISTINCT provider, amount
FROM cte
where rn = 1
