-- 24. top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

select Name, MAX(Tally) as MostPurchased
from
	(select t.Name, SUM(il.Quantity) as Tally
	from Track t
	join InvoiceLine il
	on t.TrackId = il.TrackId
	join Invoice i
	on il.InvoiceId = i.InvoiceId
	where i.InvoiceDate 
	between "2013-01-01 00:00:00"
	and "2014-01-01 00:00:00"
	group by t.Name
	order by Tally desc);