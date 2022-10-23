/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their 
respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

Solution:
SELECT country.continent, FLOOR(AVG(City.Population))
FROM city INNER JOIN country ON city.countrycode=country.code
GROUP BY country.continent;
