/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Input Format
The TRIANGLES table is described as follows:
-
-
-
-
-
Each row in the table denotes the lengths of each of a triangle's three sides.
*/

Solution:
SELECT
    CASE
        WHEN A=B OR B=C OR A=C THEN "Isosceles"
        WHEN A=B AND B=C THEN "Equilateral"
        WHEN A+B<=C OR B+C<=A OR A+C<=B THEN "Not A Triangle"
        ELSE "Scalene"
    END AS triangles_type
FROM TRIANGLES;
