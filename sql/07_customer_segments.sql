-- Business question:
-- Segment customers into New, Returning, and Loyal based on their total number of previous purchases, and show the count of each segment.

WITH customer_type AS (
    SELECT customer_id,
           previous_purchases,
           CASE
               WHEN previous_purchases = 1 THEN 'New'
               WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
               WHEN previous_purchases > 10 THEN 'Loyal'
           END AS customer_segment
    FROM customer
)
SELECT customer_segment,
       COUNT(customer_id) AS no_of_customers
FROM customer_type
GROUP BY customer_segment
ORDER BY no_of_customers DESC;
