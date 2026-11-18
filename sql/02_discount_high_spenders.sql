-- Business question:
-- Which customers used a discount but still spent more than the average purchase amount?

SELECT customer_id,
       purchase_amount
FROM customer
WHERE discount_applied = 'Yes'
  AND purchase_amount > (
        SELECT AVG(purchase_amount)
        FROM customer
      )
ORDER BY purchase_amount DESC, customer_id;
