-- GROUP BY AND ORDER BY
SELECT gender 
FROM  employee_demographics
GROUP BY gender ;
#  similar we can do it by using distinct but we can't perform operations like agregate functions
-- necessary tthat column and group by should be same.

SELECT gender , AVG(age) ,MAX(age), MIN(age), COUNT(age)
FROM  employee_demographics
GROUP BY gender ;

SELECT occupation , salary
FROM  employee_salary
GROUP BY occupation ,salary;


SELECT occupation , AVG(salary)
FROM  employee_salary
GROUP BY occupation ;



-- ORDER BY// sort in asen or desen order default asc and for desending -> desc
SELECT *
FROM  employee_demographics
ORDER BY first_name;

SELECT *
FROM  employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM  employee_demographics
ORDER BY gender, age DESC;

# ALSO WE CAN DO USING COLUMN NUMBER BUT NNOT RECOMMENDED
-- LIKE   ORDER BY 5, 4 ;

# having clause
-- run after the group by on aggreate functions

-- below code me error hai usko hi overcome karne ki liye having clause is usd

SELECT gender, AVG(age)
FROM  employee_demographics
WHERE AVG(age) > 40
GROUP BY gender;

-- CORRECT 
SELECT gender, AVG(age)
FROM  employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

-- BOTH WHERE AND HAVING
SELECT occupation , AVG(salary)
FROM  employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation 
HAVING AVG(salary) > 75000;
