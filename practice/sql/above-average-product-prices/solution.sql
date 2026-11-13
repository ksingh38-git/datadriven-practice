WITH CTE AS
(SELECT DISTINCT product_id, 
ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY total_amount) as rn, 
total_amount as base_price
FROM transactions
WHERE product_id is not null ),
running as (
SELECT product_id, base_price,
AVG(base_price) OVER () AS avg_base_price
FROM cte
where rn = 1)
SELECT product_id, base_price
FROM running 
WHERE base_price > avg_base_price
