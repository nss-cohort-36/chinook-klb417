-- 17. invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

select COUNT() as InvoiceLineTotal, i.*
from Invoice i
join InvoiceLine il
on i.InvoiceId = il.InvoiceId
group by i.InvoiceId;