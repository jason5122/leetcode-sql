WITH bought AS (
  SELECT
    DISTINCT *
  FROM
    Customer
    JOIN Product USING (product_key)
),
product_total AS (
  SELECT
    COUNT(*) AS total
  FROM
    Product
),
output AS (
  SELECT
    customer_id,
    COUNT(customer_id) AS bought,
    total
  FROM
    bought
    JOIN product_total
  GROUP BY
    customer_id
  HAVING
    bought = total
)
SELECT
  customer_id
FROM
  output;
