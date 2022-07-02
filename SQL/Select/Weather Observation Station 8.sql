/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
Input Format
The STATION table is described as follows:
------------------------------
| Field       | Type         |
------------------------------
| ID          | NUMBER       |
| CITY        | VARCHAR2(17) |
| STATE       | VARCHAR2(3)  |
| LAT_IN      | VARCHAR2(20) |
| LONG_W      | NUMBER       |
------------------------------
*/

Solution:
SELECT DISTINCT(CITY)
    FROM STATION
WHERE CITY LIKE '[aeiou]%[aeiou]';
