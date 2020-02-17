-- 9. total_sales_2011.sql: What are the respective total sales for each of those years?

select SUM(i.total) as Total2011
from Invoice i
where i.InvoiceDate 
between "2011-01-01 00:00:00"
and "2012-01-01 00:00:00";