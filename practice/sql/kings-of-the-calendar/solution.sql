WITH cte AS(SELECT p.product_name, to_char(t.transaction_date,  '%Y-%m') AS month, 
  SUM(t.quantity) AS total_quantity 
FROM transactions t JOIN products p on t.product_id = p.product_id
WHERE  p.in_stock >=1
GROUP BY
to_char(t.transaction_date,  '%Y-%m'), 
 p.product_name), 
ranking AS( Select month, product_name, total_quantity,
dense_rank() over (partition by month order by total_quantity desc ) as rnk
from cte
 )
SELECT * FROM RANKING 
WHERE rnk <= 3 
ORDER BY 
    month ASC, 
    rnk ASC, 
    product_name DESC;
