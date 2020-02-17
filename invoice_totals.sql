-- 7. invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select i.Total, c.FirstName || " " || c.LastName as CustomerName, c.Country, e.FirstName || " " || e.LastName as SalesAgentName
from Invoice i
join InvoiceLine il
on i.InvoiceId = il.InvoiceId 
join Customer c
on i.CustomerId = c.CustomerId
join Employee e
on e.EmployeeId = c.SupportRepId
group by il.InvoiceId ;