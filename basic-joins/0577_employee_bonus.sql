SELECT
  name,
  bonus
FROM
  employee
  LEFT JOIN bonus ON employee.empId = bonus.empId
WHERE
  bonus < 1000
  OR bonus IS NULL;

-- USED SOLUTION
SELECT
  name,
  bonus
FROM
  employee
  LEFT JOIN bonus USING (empId)
WHERE
  COALESCE(bonus, 0) < 1000;
