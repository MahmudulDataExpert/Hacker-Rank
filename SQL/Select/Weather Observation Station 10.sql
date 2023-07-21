/*
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
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
WHERE CITY NOT LIKE '%[aeiou]';
