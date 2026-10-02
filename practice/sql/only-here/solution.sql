SELECT m1.feat_name, lower(m1.dtype), ROUND(AVG(m1.avg_val),2), 
ROUND(AVG(m1.null_pct),2)
FROM ml_features m1
WHERE m1.source = 'transactions'
and not exists (SELECT 1 FROM ml_features m2 
WHERE m2.source IN ('page_views', 'ad_impressions')
        AND m2.feat_name = m1.feat_name
        AND LOWER(m2.dtype) = LOWER(m1.dtype) ) 
GROUP BY m1.feat_name , lower(m1.dtype)
