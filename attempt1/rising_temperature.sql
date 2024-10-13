select
  w2.id
from
  Weather w1
  JOIN Weather w2 on w1.recordDate = DATE_SUB(w2.recordDate, INTERVAL 1 DAY)
where
  w2.temperature > w1.temperature;
