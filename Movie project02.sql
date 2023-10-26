SELECT title, description FROM film WHERE description LIKE '%Dentist%';
SELECT title, description FROM film WHERE description LIKE '%Epic%';
SELECT title, description FROM film WHERE description LIKE '%china';
SELECT title, special_features FROM film WHERE special_features LIKE '%Behind the Scenes%';
SELECT rating, COUNT(film_id), COUNT(film_id) count_of_films_with_this_rating FROM film GROUP BY rating;
SELECT rating FROM film;
SELECT rental_duration, COUNT(film_id) AS films_with_this_rental_duration FROM film;
SELECT rating,rental_duration, replacement_cost,COUNT(film_id) AS count_of_films FROM film GROUP BY rating,rental_duration,replacement_cost;
SELECT rating,COUNT(film_id) AS count_of_films,
AVG(length) AS average_lenght_of_duration
FROM film GROUP BY rating;
SELECT  
replacement_cost,
COUNT(film_id) AS number_of_films,
MIN(rental_rate) AS cheapest_rental,
MAX(rental_rate) AS most_expensive_rental,
AVG(rental_rate) AS avg_rental
FROM film
GROUP BY
replacement_cost
