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
