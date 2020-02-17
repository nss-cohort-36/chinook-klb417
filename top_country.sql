-- 23. top_country.sql: Which country's customers spent the most?

select BillingCountry, MAX(Total) as MaxTotal
from (select i.BillingCountry, SUM(i.Total) as Total
from Invoice i 
group by i.BillingCountry)