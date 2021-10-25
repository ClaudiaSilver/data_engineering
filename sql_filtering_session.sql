USE sakila;
SHOW tables;
-- Task 1: This query will return the payment IDs of those customers whose customer ID is not equal to 5 and the payment amount is larger than 8 or the payment date was the 23 August 2005.
SELECT p.payment_id FROM payment p
INNER JOIN customer c
ON p.payment_id = c.customer_id
WHERE c.customer_id <> 5 AND (amount > 8 OR date(payment_date) = '2005-08-23');

-- Task 2: This will return the payment IDs of where the customer ID is equal to 5 but only if the payment amound is less than 5 or the payment date was 19 June 2005.
SELECT p.payment_id FROM payment p
INNER JOIN customer c
ON p.payment_id = c.customer_id
WHERE c.customer_id = 5 AND NOT (amount > 6 OR date(payment_date) = '2005-06-19');
-- There is no result due to condidtions! 

-- Task 3:
SELECT * FROM payment
WHERE amount = 1.98 OR 7.98 OR 9.98;

-- Task 4:
SELECT * FROM customer
WHERE last_name REGEXP '^.[A][A-Z]*[W]';