-- Write your PostgreSQL query statement below
SELECT m.name AS Employee
FROM Employee m
JOIN Employee e
ON e.ID =m.managerId
WHERE m.salary > e.salary