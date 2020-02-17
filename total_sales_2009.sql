-- 9. total_sales_2009.sql: What are the respective total sales for each of those years?

select SUM(i.total) as Total2009
from Invoice i
where i.InvoiceDate 
between "2009-01-01 00:00:00"
and "2010-01-01 00:00:00";