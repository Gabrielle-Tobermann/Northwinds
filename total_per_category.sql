-- I need a list of sales figures broken down by category name.  
-- Include the total $ amount sold over all time and the total number of items sold.

select 
sum(Quantity) [total sold],
sum((Quantity * od.UnitPrice) - (Quantity * od.UnitPrice * discount)) as total,
c.CategoryName
from [Order Details] od
join products p
	on p.ProductID = od.ProductID
join Categories c
	on c.CategoryID = p.CategoryID
group by c.CategoryName

