-- 3. brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
--full name, Invoice ID, Date of the invoice and billing country

select c.FirstName || " " || c.LastName as FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry 
from Customer c 
join Invoice i
on c.CustomerId = i.CustomerId 
where c.Country is "Brazil";