SELECT
  migr_id,
  version,
  status,
  applied,
  rollback,
  dur_ms,
  author,
  db_name FROM migrations 
ORDER By migr_id 
LIMIT 1
