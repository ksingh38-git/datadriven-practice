SELECT
job_id, job_name, status, rows_done, started,ended, priority, retries
FROM batch_jobs
ORDER BY job_id DESC
LIMIT 5
