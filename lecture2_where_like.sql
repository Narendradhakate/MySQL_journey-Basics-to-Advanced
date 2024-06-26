# WHERE CLAUSE
# it will return the row 
SELECT * 
FROM employee_salary
WHERE first_name ='Leslie';

SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT * 
FROM employee_demographics
WHERE gender != 'female';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01';

# logical operators
-- AND OR NOT operators
SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

#PEDMAS
SELECT * 
FROM employee_demographics
WHERE (first_name ='Leslie' AND age = 44) OR age > 55;

# Like statement -> match
--   % mean anything and    _ mean specific value
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%' ;
# it can be %something% example %er%

SELECT * 
FROM employee_demographics
WHERE first_name LIKE  'a%' ;

SELECT * 
FROM employee_demographics
WHERE first_name LIKE  'a__' ;
#__ 2 underscore means it has only 2 charcater after which

-- also we can combine % and _ sign 'a__%

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE  '1989%' ;