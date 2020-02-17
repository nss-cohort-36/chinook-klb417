-- 21. sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

select e.FirstName || " " || e.LastName as FullName, COUNT() as CustomerCount
from Employee e
join Customer c
on e.EmployeeId = c.SupportRepId 
where e.Title like "Sales%"
group by FullName;