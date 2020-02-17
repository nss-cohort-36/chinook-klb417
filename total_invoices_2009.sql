-- 8. total_invoices_2009.sql: How many Invoices were there in 2009 and 2011?

select COUNT() as TotalInvoices2009
from Invoice i
where i.InvoiceDate 
between "2009-01-01 00:00:00"
and "2010-01-01 00:00:00";