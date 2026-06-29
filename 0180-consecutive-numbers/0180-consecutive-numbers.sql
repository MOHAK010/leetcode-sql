-- Write your PostgreSQL query statement below
SELECT DISTINCT c.num AS ConsecutiveNums
FROM Logs c
JOIN Logs p
ON p.id = c.id - 1 
JOIN Logs n
ON n.id = c.id + 1
WHERE 
c.num = p.num
AND
c.num = n.num
