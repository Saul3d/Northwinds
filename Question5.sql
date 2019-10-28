--What are our 10 most expensive products?
select top 10 p.ProductName, max(p.UnitPrice) as Price
from products as p
group by p.ProductName
order by Price desc
