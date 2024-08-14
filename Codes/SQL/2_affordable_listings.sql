select
	neighbourhood_group, 
	room_type, 
	count(room_type) as room_type_count
from
	listings
where 
	neighbourhood_group in ('Mitte', 'Friedrichshain-Kreuzberg', 'Pankow', 'Neukölln')   
	and room_type in ('Entire home/apt', 'Hotel room')
	and price <= 120
group by 
	neighbourhood_group, room_type 
order by 
	room_type_count desc;
