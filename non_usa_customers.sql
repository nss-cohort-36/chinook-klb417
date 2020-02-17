-- 1. non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

select c.FirstName, c.CustomerId, c.Country 
from Customer c 
where c.Country is not USA;
