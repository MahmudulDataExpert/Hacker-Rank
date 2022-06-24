/*
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
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
SELECT COUNT(CITY)-COUNT(DISTINCT(CITY))
    FROM STATION;
