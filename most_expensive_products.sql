-- What are our 10 most expensive products?

select top(10) UnitPrice
from Products
order by UnitPrice desc