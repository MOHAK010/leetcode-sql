-- Write your PostgreSQL query statement below
SELECT MAX(num) as num
FROM MyNumbers
WHERE num IN ( 
    SELECT MAX(num)
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) ='1'
)