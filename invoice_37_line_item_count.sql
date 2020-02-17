-- 10. invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

select COUNT() as NumberOf37s
from InvoiceLine il
where il.InvoiceId = 37;