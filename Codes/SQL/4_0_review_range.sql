select 
	 distinct number_of_reviews as reviews
from
	listings
where 
	neighbourhood_group in ('Mitte', 'Friedrichshain-Kreuzberg', 'Pankow', 'Neukölln')   
    and room_type = 'Entire home/apt'
    and availability_365 >= 50
    and (price * 10) between 260 and 700
    and number_of_reviews between 200 and 600
order by 
	reviews desc
limit 15;    
