# Write your MySQL query statement below
SELECT E.NAME,B.BONUS
FROM EMPLOYEE E LEFT OUTER JOIN BONUS B
ON E.empID=B.empID
WHERE B.BONUS<1000 OR B.BONUS IS NULL