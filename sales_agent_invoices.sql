-- 6. sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

select e.FirstName || " " || e.LastName as FullName, i.InvoiceId 
from Invoice i
join Customer c
on i.CustomerId = c.CustomerId 
join Employee e
on c.SupportRepId = e.EmployeeId
order by FullName;