-- 15. playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

select p.Name, COUNT() as TrackTotal
from Playlist p
join PlaylistTrack pt
on p.PlaylistId = pt.PlaylistId
group by p.PlaylistId;