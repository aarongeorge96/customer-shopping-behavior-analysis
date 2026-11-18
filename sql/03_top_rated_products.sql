-- Business question:
-- Which are the top 5 products with the highest average review rating?

SELECT item_purchased AS product,
       ROUND(AVG(review_rating)::numeric, 2) AS average_review_rating
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC
LIMIT 5;
