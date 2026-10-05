# Write your MySQL query statement below

select id
from (select id,temperature, recordDate,
LAG(temperature) OVER (ORDER BY recordDate) AS previous_temp,
LAG(recordDate) OVER (ORDER BY recordDate) AS previous_date
from Weather) W
where temperature > previous_temp and DATEDIFF(recordDate,previous_date) = 1;

