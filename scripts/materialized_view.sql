CREATE MATERIALIZED VIEW mv_branch_summary AS
SELECT
  b.bid AS branch_id,
  COUNT(a.aid) AS total_accounts,
  SUM(a.abalance) AS total_balance
FROM
  pgbench_branches b
LEFT JOIN
  pgbench_accounts a ON a.bid = b.bid
GROUP BY
  b.bid
ORDER BY
  b.bid;

-- REFRESH MATERIALIZED VIEW mv_branch_summary;
