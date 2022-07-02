/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name).
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
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

Sample Input:
For example, CITY has four entries: DEF, ABC, PQRS and WXY.

Sample Output:
ABC 3
PQRS 4

Explanation:
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths 3,3,4 and 2. 
The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.
*/

Solution:
(SELECT CITY, LENGTH(CITY)
    FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY
    LIMIT 1)
UNION
(SELECT CITY, LENGTH(CITY)
    FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
    LIMIT 1);
