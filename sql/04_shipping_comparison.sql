-- Business question:
-- Compare the average purchase amounts between Standard and Express shipping.

SELECT shipping_type,
       ROUND(AVG(purchase_amount)::numeric, 2) AS average_purchase_amount
FROM customer
WHERE shipping_type IN ('Express', 'Standard')
GROUP BY shipping_type
ORDER BY average_purchase_amount DESC;
