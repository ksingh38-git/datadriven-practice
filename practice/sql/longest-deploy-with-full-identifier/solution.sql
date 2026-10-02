SELECT full_identifier, dur_secs from (
SELECT
  svc_name || ':' || version ||  ' ' || '(' 
|| 'deploy' ||  ' #' || log_id || ')' AS full_identifier,
  RANK() OVER(ORDER BY DUR_SECS DESC) as rn,
  DUR_SECS
FROM deploy_logs) where rn = 1
