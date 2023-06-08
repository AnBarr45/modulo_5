SELECT 
rental.rental_date,
rental.rental_id,
customer.first_name,
customer.last_name, 
customer.email, 
customer.store_id,
customer.active
FROM rental JOIN customer 
ON rental.customer_id = customer.customer_id
WHERE EXTRACT(YEAR FROM rental_date) = 2005
AND EXTRACT(MONTH FROM rental_date) = 5;
