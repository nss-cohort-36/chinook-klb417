-- 16. tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

select t.Name, al.Title, mt.Name as MediaType, g.Name as Genre, t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice 
from Track t
join Album al
on t.AlbumId = al.AlbumId
join MediaType mt
on t.MediaTypeId = mt.MediaTypeId
join Genre g
on t.GenreId = g.GenreId;