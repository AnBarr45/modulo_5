SELECT 
  title, 
  rental_rate,
  rental_date
FROM film JOIN inventory JOIN rental
ON film.film_id = inventory.film_id
-- WHERE rental_rate > 4.0
-- AND EXTRACT(YEAR FROM rental_date) = 2006;
WHERE EXTRACT(YEAR FROM rental_date) = 2006;
