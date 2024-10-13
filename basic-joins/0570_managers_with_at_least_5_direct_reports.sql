SELECT
  name
FROM
  (
    SELECT
      e1.name,
      COUNT(e1.id) AS reports
    FROM
      employee e1
      INNER JOIN employee e2 ON e1.id = e2.managerId
    GROUP BY
      e2.managerId
    HAVING
      reports >= 5
  ) AS subquery;

-- USED SOLUTION
SELECT
  name
FROM
  employee
WHERE
  id IN(
    SELECT
      managerId
    FROM
      employee
    GROUP BY
      managerId
    HAVING
      COUNT(managerId) >= 5
  );
