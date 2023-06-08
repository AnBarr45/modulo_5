SELECT 
customer.store_id,
customer.first_name,
customer.last_name, 
customer.email, 
customer.active,
rental.rental_date,
rental.rental_id
FROM rental JOIN customer 
-- ON rental.customer_id = customer.customer.id
ON rental.customer_id = customer.customer_id
WHERE EXTRACT(YEAR FROM rental_date) = 2005
AND EXTRACT(MONTH FROM rental_date) = 5
GROUP BY rental_date,rental_id, store_id, first_name, last_name,email,active;
