select svc_name, count(checked) as check_count
FROM svc_health
group by svc_name
order by check_count DESC, svc_name
