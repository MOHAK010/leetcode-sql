-- Write your PostgreSQL query statement below
SELECT name , bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE bonus <=999
OR bonus IS NULL