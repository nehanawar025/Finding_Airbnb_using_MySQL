select
	neighbourhood_group,
	case
		when (price * 10) between 260 and 700 then '260 -700'
		when (price * 10) between 701 and 1020 then '701- 1020'
		when (price * 10) between 1021 and 1200 then '1021 - 1200'
	end  as price_range_10days,
	count(id) as Total_listings
from
	listings
where 
	neighbourhood_group in ('Mitte', 'Friedrichshain-Kreuzberg', 'Pankow', 'Neukölln')   
	and room_type = 'Entire home/apt'
	and availability_365 >= 50
	and price <= 120  
group by
	neighbourhood_group,
	case
		when (price * 10) between 260 and 700 then '260 -700'
		when (price * 10) between 701 and 1020 then '701- 1020'
		when (price * 10) between 1021 and 1200 then '1021 - 1200'
	end
order by 
	Total_listings desc;
