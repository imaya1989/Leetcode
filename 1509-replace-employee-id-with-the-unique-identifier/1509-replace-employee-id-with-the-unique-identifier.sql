# Write your MySQL query statement below
select eu.unique_id UNIQUE_ID,e.name NAME
from employees e LEFT OUTER JOIN employeeUNI  eu
on e.id=eu.id;