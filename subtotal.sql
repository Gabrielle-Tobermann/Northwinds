-- What is the undiscounted subtotal for each Order (identified by OrderID).

select UnitPrice*Quantity [subtotal], OrderID 
from [Order Details]