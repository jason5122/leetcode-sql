SELECT
  w2.id
FROM
  weather w1
  LEFT JOIN weather w2 ON w2.recordDate = ADDDATE(w1.recordDate, 1)
WHERE
  w2.temperature > w1.temperature;

-- USED SOLUTION
SELECT
  w1.id
FROM
  weather w1
  JOIN weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE
  w1.temperature > w2.temperature
