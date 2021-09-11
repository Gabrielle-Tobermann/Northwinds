-- What is the cost after discount for each order?  Discounts should be applied as a percentage off.

select *, (UnitPrice * Quantity) - (UnitPrice * Quantity * Discount) [cost after discount]
from [Order Details]