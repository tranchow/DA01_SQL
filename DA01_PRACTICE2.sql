--- EX 1
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2=0;
--- EX 2
SELECT 
COUNT(ID) - COUNT( DISTINCT CITY) 
FROM STATION;
--- EX 4
SELECT 
ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences)AS DECIMAL), 1)
AS mean
FROM items_per_order;
---EX 5
SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id 
HAVING COUNT(skill)=3;
--- EX 6
SELECT user_id,
MAX(DATE(post_date))-MIN(DATE(post_date)) AS days_between
FROM posts
WHERE post_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY user_id
HAVING MAX(DATE(post_date))-MIN(DATE(post_date)) > 0;
--- EX7
SELECT card_name,
MAX(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY MAX(issued_amount)-MIN(issued_amount) DESC;
--- EX 8
SELECT manufacturer,
COUNT(drug) AS drug_count,
ABS(SUM(cogs)- SUM(total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales<cogs
GROUP BY manufacturer
ORDER BY total_loss DESC;
--- EX 9
SELECT id,
movie,
description,
rating
FROM Cinema
WHERE NOT(description='boring') 
AND id%2=1
ORDER BY rating DESC
