-- 18. sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

select e.FirstName || " " || e.LastName as FullName, SUM(i.Total) as TotalSales
from Employee e 
join Customer c
on e.EmployeeId = c.SupportRepId
join Invoice i
on c.CustomerId = i.CustomerId
where e.Title like "Sales%"
group by FullName;