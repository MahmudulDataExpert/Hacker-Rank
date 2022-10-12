Query the difference between the maximum and minimum populations in CITY.

Solution:
SELECT MAX(population)-MIN(population) as diff_population
FROM city
