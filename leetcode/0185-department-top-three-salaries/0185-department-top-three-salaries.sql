-- Write your PostgreSQL query statement below
with cte AS(
    SELECT departmentId,
    name ,
    salary,
    DENSE_RANK() OVER( partition BY departmentId Order by Salary DESC ) AS rank
    FROM Employee
)
SELECT d.name AS Department , e.name AS Employee ,  e.salary
FROM cte e
JOIN Department d
ON d.id = e.departmentId 
WHERE rank <= 3  