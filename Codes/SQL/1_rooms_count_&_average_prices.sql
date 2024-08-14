select
	neighbourhood_group, 
	room_type, 
	count(room_type) as room_type_count, 
	round(sum(price)/count(room_type), 2) as average_price
from
	listings
where 
	neighbourhood_group in ('Mitte', 'Friedrichshain-Kreuzberg', 'Pankow', 'Neukölln')   
	and room_type in ('Entire home/apt', 'Hotel room')
group by 
	neighbourhood_group, room_type
order by 
	average_price desc;
