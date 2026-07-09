-- Write your PostgreSQL query statement below
WITH unique_location AS
(
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
) ,
 duplicate AS(
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
SELECT ROUND(SUM(i.tiv_2016)::numeric,2) as tiv_2016
FROM Insurance i 
JOIN unique_location c
ON i.lat = c.lat
AND i.lon =c.lon
JOIN duplicate d
ON i.tiv_2015 = d.tiv_2015
