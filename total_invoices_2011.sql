-- 8. total_invoices_2011.sql: How many Invoices were there in 2009 and 2011?

select COUNT() as TotalInvoices2011
from Invoice i
where i.InvoiceDate 
between "2011-01-01 00:00:00"
and "2012-01-01 00:00:00";