select user_id
FROM transactions
where transaction_date >= '2026-01-01'
and transaction_date < '2026-07-01'
GROUP by user_id 
HAVING COUNT(transaction_id) >= 4
INTERSECT
select user_id
FROM transactions
where transaction_date >= '2026-07-01'
and transaction_date < '2027-01-01'
GROUP by user_id 
HAVING COUNT(transaction_id) >= 4
