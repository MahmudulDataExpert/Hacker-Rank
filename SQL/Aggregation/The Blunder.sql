/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her 
keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between 
her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
*/
Solution:
SELECT CAST(ceiling(AVG(CAST(salary AS float)) - AVG(CAST(REPLACE(salary, '0', '') AS float))) AS int) 
FROM employees;
