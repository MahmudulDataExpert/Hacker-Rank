/*
Query the total population of all cities in CITY where District is California.
*/

Solution:

SELECT SUM(population)
FROM city
WHERE District = 'California';
