WITH cumulative_sum AS (
  SELECT
    person_name,
    turn,
    SUM(weight) OVER (
      -- This is the explicit definition of OVER (ORDER BY ...)
      ORDER BY
        turn RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS total_weight
  FROM
    Queue
)
SELECT
  person_name
FROM
  cumulative_sum
WHERE
  total_weight <= 1000
ORDER BY
  turn DESC
LIMIT
  1;
