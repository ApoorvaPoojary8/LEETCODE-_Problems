# Write your MySQL query statement below


select name
from SalesPerson 
where sales_id NOT IN(select S.sales_id
from Orders O
INNER JOIN Company C ON O.com_id = C.com_id
INNER JOIN SalesPerson S ON O.sales_id = S.sales_id
where C.name = "RED");
