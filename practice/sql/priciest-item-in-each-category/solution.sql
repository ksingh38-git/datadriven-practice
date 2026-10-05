with cte as  (Select category , product_name , price , DENSE_RANK()over
(partition by category order by price desc) as rn
FROM products
)
Select category, product_name , price
from cte 
where rn = 1
order by category, product_name
