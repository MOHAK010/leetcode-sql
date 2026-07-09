-- Write your PostgreSQL query statement below
SELECT p.project_id,
ROUND(
    CAST(
        AVG(e.experience_years) AS numeric),
        2
) AS average_years
FROM Project p
INNER JOIN Employee e
ON e.employee_id = p.employee_id
GROUP BY p.project_id
ORDER BY p.project_id ASC
