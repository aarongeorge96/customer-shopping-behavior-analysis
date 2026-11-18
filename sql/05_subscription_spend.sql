-- Business question:
-- Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers.

SELECT subscription_status,
       COUNT(customer_id) AS no_of_customers,
       ROUND(AVG(purchase_amount)::numeric, 2) AS average_spend,
       SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue DESC;
