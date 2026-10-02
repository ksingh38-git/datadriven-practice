with cte as (SELECT
  migr_ID,
  version
FROM migrations 
ORDER by migr_ID desc
limit 1)
Select migr_ID,
  version, status,
  applied,
  rollback,
  dur_ms,
  author,
  db_name 
from migrations 
where version = (Select version from cte)
