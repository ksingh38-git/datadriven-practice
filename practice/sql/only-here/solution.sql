SELECT feat_name, lower(dtype) as dtype, ROUND(avg(avg_val),2) as avg_val,
ROUND(avg(null_pct),2) as null_pct
FROM ml_features mf
WHERE source = 'transactions'
and NOT EXISTS ( SELECT 1 
FROM ml_features m
WHERE mf.feat_name = m.feat_name
AND lower(mf.dtype) = lower(m.dtype)
AND m.source IN ('page_views', 'ad_impressions')
)
GROUP BY feat_name, lower(dtype)
