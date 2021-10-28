-- Task 1:
use sakila;
select c.first_name, c.last_name, a.address, ct.city
from customer c
inner join address a
on c.address_id = a.address_id
inner join city ct
on a.city_id = ct.city_id
where a.district = 'California';

-- Task 2:
show tables;
desc film;
desc actor;
select f.title
from film f
inner join film_actor fa
on f.film_id = fa.film_id
inner join actor a
on a.actor_id = fa.actor_id
where a.first_name = 'JOHN';

-- Task 3:
desc address;
select a.address, b.address, a.city_id, b.city_id, city
from city ct
inner join address a
on ct.city_id = a.city_id 
inner join address b
on a.city_id = b.city_id
where a.address <> b.address
order by city;



