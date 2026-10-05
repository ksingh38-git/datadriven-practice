SELECT node_id, hostname, cpu_pct
FROM infra_nodes
ORDER BY cpu_pct DESC
limit 10;
