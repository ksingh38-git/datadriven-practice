WITH cte as (SELECT tbl_name, col_name , COUNT(*) as duplicate_count
FROM dq_checks 
GROUP BY tbl_name, col_name
HAVING COUNT(*) > 1), 
ranking as (Select tbl_name, col_name, duplicate_count,
RANK() OVER (ORDER BY duplicate_count DESC) as dup_rank
FROM cte ),
calc as (SELECT tbl_name, col_name, duplicate_count,dup_rank,
SUM(duplicate_count) OVER()  as total_dup
from ranking)
Select tbl_name, col_name, duplicate_count,dup_rank,
(DUPLICATE_COUNT * 100)/TOTAL_DUP as pct_of_dups
FROM calc
