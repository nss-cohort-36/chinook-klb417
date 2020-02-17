-- 14. country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

select i.BillingCountry, COUNT() as InvoiceTotal
from Invoice i 
group by i.BillingCountry;