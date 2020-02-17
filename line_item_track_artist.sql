-- 13. line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

select il.InvoiceLineId, t.Name as TrackName, ar.Name as ArtistName
from InvoiceLine il
join Track t
on il.TrackId = t.TrackId
join Album al
on t.AlbumId = al.AlbumId
join Artist ar
on al.ArtistId = ar.ArtistId
order by il.InvoiceLineId;