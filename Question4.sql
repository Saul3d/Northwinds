-- I need a list of sales figures broken down by category name.  Include the total amount sold over all time and the total number of items sold
select c.CategoryName, c.CategoryID, sum((od.UnitPrice*od.UnitPrice)*(1-od.Discount)) as [Sales Figures]

from [Order Details] as od
    join products as p
        on p.ProductID = od.ProductID
    join Categories as c
        on p.CategoryID = c.CategoryID
group by c.CategoryID, c.CategoryName
