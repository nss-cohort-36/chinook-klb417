-- 12. line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

select il.InvoiceLineId, t.Name 
from InvoiceLine il
join Track t
on il.TrackId = t.TrackId
order by il.InvoiceLineId asc;