USE mavenmovies;
select * from rental;
select * from inventory;
SELECT * from customer;
SELECT customer_id, rental_date FROM rental;
Select first_name,
       last_name,
       email
       from customer;
select distinct rating FROM film;
SELECT DISTINCT rental_duration FROM film;
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE amount=0.99;
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE payment_date >'2006-01-01';
SELECT * FROM payment;
SELECT * FROM payment WHERE customer_id BETWEEN 1 AND 100;
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE amount =0.99 AND payment_date >'2001-01-01';
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE customer_id <101 AND amount >=5 AND payment_date >'2006-01-01';
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE customer_id=5 OR customer_id=11 OR customer_id=20;
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE amount>5 OR customer_id=42 OR customer_id=53 OR customer_id=60 OR customer_id=75;
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE amount>5 OR customer_id IN(42,53,60,75);
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE customer_id IN(5,11,29)