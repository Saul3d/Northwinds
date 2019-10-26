--What is the cost after discount for each order?  Discounts should be applied as a percentage off.
select od.OrderID, ProductName, (od.UnitPrice * od.Quantity )*(1-od.Discount) as TotalCost
from [Order Details] as od
    join Orders as o
        on od.OrderID = o.OrderID
    join Products as p
        on od.ProductID = p.ProductID

group by od.OrderID, ProductName, (od.UnitPrice * od.Quantity)*(1-od.Discount)
order by ProductName