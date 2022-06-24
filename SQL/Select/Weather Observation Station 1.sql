/*
Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:
------------------------------
| Field       | Type         |
------------------------------
| ID          | NUMBER       |
| CITY        | VARCHAR2(17) |
| STATE       | VARCHAR2(3)  |
| LAT_N       | NUMBER       |
| LONG_W      | NUMBER       |
------------------------------
*/

Solution:
SELECT CITY,STATE 
  FROM STATION;       
