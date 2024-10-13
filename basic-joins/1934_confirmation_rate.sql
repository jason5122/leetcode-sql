-- USED SOLUTION
SELECT
  user_id,
  ROUND(AVG(IF(c.action = "confirmed", 1, 0)), 2) AS confirmation_rate
FROM
  signups s
  LEFT JOIN confirmations c USING (user_id)
GROUP BY
  user_id;
