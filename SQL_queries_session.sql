USE sakila;
SHOW TABLES;
DESCRIBE actor;
-- Task 1:
SELECT actor_id, first_name, last_name FROM	actor
ORDER BY last_name ASC, first_name ASC;
-- Task 2:
SELECT actor_id, first_name, last_name FROM	actor
WHERE last_name = "Williams" OR last_name = "Davis";
SHOW TABLES;
-- Task 3:
SELECT c.customer_id, DATE (r.rental_date) 
FROM customer c 
INNER JOIN rental r
ON c.customer_id = r.customer_id
WHERE DATE (r.rental_date)='2005-07-05';
-- Task 4:
SELECT c.email, r.return_date FROM customer c
INNER JOIN rental r
ON c.customer_id = r.customer_id
WHERE DATE(r.rental_date) = '2005-06-14'
ORDER BY return_date DESC, c.email;





