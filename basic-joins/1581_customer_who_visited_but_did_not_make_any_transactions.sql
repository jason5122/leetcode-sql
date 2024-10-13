SELECT
  customer_id,
  COUNT(customer_id) AS count_no_trans
FROM
  visits
  LEFT JOIN transactions USING (visit_id)
WHERE
  transaction_id IS NULL
GROUP BY
  customer_id
