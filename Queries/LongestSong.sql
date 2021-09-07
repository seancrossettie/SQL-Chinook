--Artists and their longest track

select * 
from Artist a
join (
	select ArtistId, max(Milliseconds) [Longest Song]
	from Track t 
		join Album a 
			on a.AlbumId = t.AlbumId
	group by ArtistId
) maxSong
on a.ArtistId = maxSong.ArtistId

-- Correlated subquery in the select statement
select a.ArtistId, a.name,
	(select max(Milliseconds)
	from Track t 
		join Album al
			on al.AlbumId = t.AlbumId
			where al.ArtistId = a.ArtistId
		group by ArtistId
)
from Artist a

-- Which artists have no tracks
-- Correlated Subquery in the where clause

select *
from Artist a
where not exists (
select *
from track t 
	join Album al
		on al.AlbumId = t.AlbumId
where al.ArtistId = a.ArtistId
)

-- Union, Except, Union All
-- Combining two or more result set that may or may not have anything in common
select left(Name, 1)
from Artist
union all
select left(FirstName, 1)
from Customer


select Email, 'Employee' as [type]
from Employee
union
select Email, 'Customer'
from Customer


-- except operator
select ArtistId
from Artist a
except 
select ArtistId
from Album