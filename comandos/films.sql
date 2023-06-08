SELECT 
  title, 
  rental_rate,
  release_year
FROM (
  SELECT *
  FROM film JOIN inventory 
  ON film.film_id = inventory.film_id
  WHERE release_year = '2006')
FILM JOIN rental
ON rental.inventory_id = FILM.inventory_id
WHERE rental_rate > 4
GROUP BY FILM.title, rental_rate, release_year;
