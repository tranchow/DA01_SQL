---ex1
SELECT NAME FROM CITY
WHERE POPULATION>120000
AND COUNTRYCODE='USA';
---ex2
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';
---ex3
SELECT CITY, STATE FROM STATION;
---ex4
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
   OR CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%';
---ex5
