-- Write your PostgreSQL query statement below
SELECT COUNT(DISTINCT subject_id) AS cnt, teacher_id
FROM Teacher
GROUP BY teacher_id