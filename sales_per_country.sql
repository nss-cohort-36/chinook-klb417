-- 22. sales_per_country.sql: Provide a query that shows the total sales per country.

select i.BillingCountry, SUM(i.Total) as Total
from Invoice i 
group by i.BillingCountry;