--EX1
SELECT Name
FROM STUDENTS
WHERE Marks > 75 
ORDER BY RIGHT(Name, 3), ID
--EX2
SELECT user_id, concat(upper(Left(name,1)), right(lower(name),length(name)-1)) as name
FROM Users
--EX3
SELECT manufacturer,
'$' || ROUND(SUM(total_sales)/1000000,0) || ' million' AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC
--ex4
SELECT 
EXTRACT(month FROM submit_date) AS mth,
product_id AS product,
round(AVG(stars),2) AS avg_stars
FROM reviews
GROUP BY product_id, mth
ORDER BY mth, product_id
--EX5
SELECT sender_id,
COUNT(content) AS message_count
FROM messages
WHERE sent_date BETWEEN '2022-08-01' and '2022-08-30'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2
--EX6
SELECT tweet_id
FROM Tweets
WHERE length(content)>15
--ex8
select
COUNT(id) AS number
from employees
WHERE EXTRACT(month FROM joining_date) BETWEEN 1 AND 7
and EXTRACT(year FROM joining_date) = 2022
--ex9
select position('a' IN first_name ) 
from worker
where first_name = 'Amitah'
--ex10
select 
substring(title, length(winery)+2, 4) as year
from winemag_p2
where country = 'Macedonia' ;
