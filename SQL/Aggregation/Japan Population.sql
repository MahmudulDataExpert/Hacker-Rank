Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.


Solution:
SELECT SUM(population)
FROM city
WHERE countrycode='JPN'
