/*
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
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
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

Query:

SELECT DISTINCT CITY
    FROM STATION
WHERE (ID % 2) = 0
    ORDER BY CITY;
