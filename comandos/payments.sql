SELECT 
  payment_id, 
  payment_date, 
  -- SUM(amount)
  amount
FROM  payment

GROUP BY payment_date,payment_id,amount;
