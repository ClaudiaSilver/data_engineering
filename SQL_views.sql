use sakila;
show tables;
select* from category;
select* from film_category;
select* from film;
select * from film_actor;

-- Task 1:

-- We need to join the category table with the film_category table on category_id. 
-- Then we join the film_cat table with the film table on film_id.
-- Then we join the film table with the film_actor table on film_id
-- Finally we join the film_actor with the actor table on actor_id.