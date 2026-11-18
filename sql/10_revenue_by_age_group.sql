-- Business question:
-- What is the revenue contribution of each age group?

SELECT age_group,
       SUM(purchase_amount) AS revenue_contribution
FROM customer
GROUP BY age_group
ORDER BY revenue_contribution DESC;
