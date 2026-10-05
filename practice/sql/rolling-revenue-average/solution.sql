WITH cte as(SELECT SUM(total_amount) AS monthly_spend,  
DATE_FORMAT(transaction_date,  '%Y-%m') AS month 
FROM transactions WHERE total_amount > 0 
GROUP BY DATE_FORMAT(transaction_date,  '%Y-%m'))
Select month as ym, AVG(monthly_spend)
OVER (ORDER BY month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) as
rolling_avg
FROM cte
