/*
Query the average population of all cities in CITY where District is California.
*/

Solution:
SELECT AVG(population)
FROM city
WHERE District = 'California'
