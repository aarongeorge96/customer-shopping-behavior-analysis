-- Business question:
-- Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?

SELECT subscription_status,
       COUNT(customer_id) AS repeat_customers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status
ORDER BY repeat_customers DESC;
