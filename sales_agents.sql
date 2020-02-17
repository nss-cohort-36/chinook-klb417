-- 4. sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

select e.FirstName || " " || e.LastName as FullName
from Employee e
where e.title = "Sales Support Agent";