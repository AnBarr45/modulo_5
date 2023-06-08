SELECT 
  (SELECT COUNT(DISTINCT payment_id) FROM payment) AS numero_ids,
  (SELECT COUNT(DISTINCT payment_date) FROM payment) AS numero_fechas,  
  (SELECT SUM(amount) FROM payment)
FROM  payment
GROUP BY payment_date,payment_id,amount
LIMIT 1;
