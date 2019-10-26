--What products are currently for sale (not discontinued)?
select  od.productId, p.ProductName, p.Discontinued
from products as p
 join [order details] as od
    on  p.ProductID = od.ProductID
where p.discontinued = 0 and od.Discount <= 0
group by od.productId, p.ProductName, p.Discontinued

