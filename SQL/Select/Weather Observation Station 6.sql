/* 
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
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

where LAT_N is the northern latitude and LONG_W is the western longitude.
/*

Solution:
SELECT DISTINCT(CITY)
    FROM STATION
WHERE CITY LIKE "a%"
    or City like 'e%' 
    or City like 'i%' 
    or City like 'o%' 
    or City like 'u%';
