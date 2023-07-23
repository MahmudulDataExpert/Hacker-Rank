/*
pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.
*/
SELECT
    Doctor,
    Professor,
    Singer,
    Actor
FROM(
    SELECT
        NameOrder,
        max(case Occupation when 'Doctor' then Name end) AS Doctor,
        max(case Occupation when 'Professor' then Name end) AS Professor,
        max(case Occupation when 'Singer' then Name end) AS Singer,
        max(case Occupation when 'Actor' then Name end) AS Actor
    FROM (
            SELECT
                Occupation,
                Name,
                row_number() over(partition BY Occupation ORDER BY Name ASC) AS NameOrder
            FROM Occupations
         ) AS NameLists
    GROUP BY NameOrder
    ) AS Names
