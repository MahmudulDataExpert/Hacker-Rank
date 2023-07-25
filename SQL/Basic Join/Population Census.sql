/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
*/
Solution:
SELECT SUM(city.population)
FROM CITY 
  INNER JOIN COUNTRY 
  ON CITY.countrycode=COUNTRY.code
WHERE Continent='Asia';
