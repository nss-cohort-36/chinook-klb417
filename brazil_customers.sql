-- 2. brazil_customers.sql: Provide a query only showing the Customers from Brazil.

select c.FirstName, c.CustomerId, c.Country 
from Customer c 
where c.Country is "Brazil";