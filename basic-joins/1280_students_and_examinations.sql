SELECT
  student_id,
  student_name,
  subject_name,
  COUNT(examinations.student_id) AS attended_exams
FROM
  students
  CROSS JOIN subjects
  LEFT JOIN examinations USING (student_id, subject_name)
GROUP BY
  subject_name,
  student_name
ORDER BY
  student_id,
  subject_name;
