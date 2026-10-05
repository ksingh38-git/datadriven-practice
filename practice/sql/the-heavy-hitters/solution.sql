WITH product_sales AS (
    -- Step 1: Calculate the total revenue for each product across all sales
    SELECT 
        product_id,
        SUM(total_amount) AS total_total_amount
    FROM transactions
    GROUP BY product_id
),
ranked_leaderboard AS (
    -- Step 2: Join with product names and compute their leaderboard positions
    SELECT 
        p.product_name AS product_name,
        ps.total_total_amount,
        DENSE_RANK() OVER (ORDER BY ps.total_total_amount DESC) AS rnk
    FROM product_sales ps
    JOIN products p ON ps.product_id = p.product_id
)
-- Step 3: Filter for the top 10 positions on the leaderboard
SELECT 
    product_name,
    total_total_amount,
    rnk
FROM ranked_leaderboard
WHERE rnk <= 10
ORDER BY rnk ASC;
