# Write your MySQL query statement below
select MAX(num) as num
from MyNumbers
where num IN
(select num
from MyNumbers
group by num
having count(*) = 1);