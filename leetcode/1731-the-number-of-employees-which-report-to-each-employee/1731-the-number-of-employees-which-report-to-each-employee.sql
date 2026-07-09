-- Write your PostgreSQL query statement below
SELECT e.employee_id , e.name ,COUNT(r.reports_to) reports_count, ROUND(AVG(r.age):: numeric) as average_age
FROM Employees e
JOIN Employees r
ON e.employee_id = r.reports_to
GROUP BY e.employee_id,e.name
ORDER BY e.employee_id ASC