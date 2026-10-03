with cte as (SELECT svc_name, bill_date, amount
FROM cloud_costs),
calc as (SELECT svc_name , bill_date,amount, LAG(amount) over (PARTITION BY
 svc_name ORDER BY bill_date) as prev_bill
 FROM cte)
 Select svc_name, bill_date,amount,
 CASE when prev_bill is NULL THEN NULL
 WHEN prev_bill = 0 then NULL
 ELSE amount - prev_bill END AS price_Change
 FROM calc
