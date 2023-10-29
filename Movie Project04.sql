SELECT inventory_id,
store_id,
film.title,
film.description
FROM inventory
INNER JOIN film 
ON film.film_id = inventory.film_id;

SELECT 
film.title,
COUNT(film_actor.actor_id) AS count_of_actors
FROM film
LEFT JOIN film_actor
ON film_actor.film_id=film.film_id
GROUP BY 
film.title;
SELECT
actor.first_name AS actor_first_name,
actor.last_name AS actor_last_name,
film.title AS film_title
FROM actor
INNER JOIN film_actor
ON film_actor.actor_id=actor.actor_id
INNER JOIN film
ON film.film_id=film_actor.film_id;
SELECT distinct
film.title,
film.description
FROM film
INNER JOIN inventory
ON inventory.film_id=film.film_id
AND inventory.store_id=2
;
SELECT 
'advisor' AS type,
first_name,
last_name
FROM advisor

UNION

SELECT
'Staff'AS type,
first_name,
last_name
FROM staff
