-- 19. top_2009_agent.sql: Which sales agent made the most in sales in 2009? Hint: Use the MAX function on a subquery.

select FullName, MAX(TotalSales) as MaxSales2009
from (
	select e.FirstName || " " || e.LastName as FullName, SUM(i.Total) as TotalSales
	from Employee e 
	join Customer c
	on e.EmployeeId = c.SupportRepId
	join Invoice i
	on c.CustomerId = i.CustomerId
	where e.Title like "Sales%"
	and i.InvoiceDate 
	between "2009-01-01 00:00:00"
	and "2010-01-01 00:00:00"
	group by FullName);