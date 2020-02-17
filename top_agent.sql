-- 20. top_agent.sql: Which sales agent made the most in sales over all?

select FullName, MAX(TotalSales) as MaxSalesOverall
from (
	select e.FirstName || " " || e.LastName as FullName, SUM(i.Total) as TotalSales
	from Employee e 
	join Customer c
	on e.EmployeeId = c.SupportRepId
	join Invoice i
	on c.CustomerId = i.CustomerId
	where e.Title like "Sales%"
	group by FullName);