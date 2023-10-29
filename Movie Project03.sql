USE mavenmovies;
SELECT 
customer_id,
COUNT(*) AS total_rental
FROM rental
GROUP BY
customer_id
HAVING COUNT(*)>=30;
SELECT * FROM rental;
SELECT
customer_id,
COUNT(rental_id)AS total_rentals
FROM rental
GROUP BY
customer_id;
SELECT customer_id, COUNT(rental_id)AS total_rentals FROM rental GROUP BY customer_id HAVING COUNT(rental_id)<15;
SELECT customer_id,rental_id,amount,payment_date FROM payment ORDER BY amount DESC;
SELECT customer_id, sum(amount) AS total_payment_amount FROM payment GROUP BY customer_id ORDER BY sum(amount) DESC;
SELECT title, lenght, rental_rate FROM film ORDER BY lenght DESC

