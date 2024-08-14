select 
  name,
  host_name as owner,
  neighbourhood_group,
  (price * 10) as Total_price_10day,
  availability_365 as available_days_per_year,
  number_of_reviews
from
	listings
where 
  neighbourhood_group in ('Mitte', 'Friedrichshain-Kreuzberg', 'Pankow', 'Neukölln')   
  and room_type = 'Entire home/apt'
  and availability_365 >= 50
  and (price * 10) between 260 and 700
  and number_of_reviews between 260 and 600
