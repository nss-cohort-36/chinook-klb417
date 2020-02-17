-- 25. top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.

select t.Name, SUM(il.Quantity) as Tally
from Track t
join InvoiceLine il
on t.TrackId = il.TrackId
join Invoice i
on il.InvoiceId = i.InvoiceId
group by t.Name
order by Tally desc
limit 5;