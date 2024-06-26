-- Limit and aliasing
# how many rows i want

SELECT *
FROM  employee_demographics
ORDER BY  age DESC
LIMIT 3 , 1; # HERE 3 IS POSTITON AND 1 IS AFETR 3RD POSITION WALA NUMBER

-- ALIASING USED TO CHANGE THE NAME OF THE COLUMN
SELECT gender, AVG(age) AS AVG_AGE
FROM  employee_demographics
GROUP BY gende
HAVING AVG(age) >40;