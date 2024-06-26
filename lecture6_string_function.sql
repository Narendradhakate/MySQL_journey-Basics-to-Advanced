-- String function it si the build in function and to handle with string

SELECT LENGTH('Tomharry');

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY length(first_name); # order by 2 here 2 is the column number

-- other use case if to check the length of phone number we can use length function

SELECT UPPER('Ssku');  # upper and lower case the char
SELECT LOWER('LOWER');


SELECT first_name, UPPER(first_name)
FROM employee_demographics
ORDER BY length(first_name);

-- TRIM WHITESPACE 

SELECT TRIM('       SKY     ');# TRIM SPACE KO PICHE KAR DETA HAI TRAILING KAR DETA HAI.
SELECT LTRIM('       SKY     ');# IS ME SIRF LEFT SIDE KE SAPCE  HAT TE 
SELECT RTRIM('       SKY     ');

-- SUBSTRING CONCEPT

SELECT first_name, LEFT(first_name)
FROM employee_demographics; # error 


SELECT first_name, 
LEFT(first_name, 4), # 4 char from left
RIGHT(first_name, 4), 
SUBSTRING(first_name, 3 ,2),# 3 rd position and 2 char
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month # TO GET the month only
FROM employee_demographics;

-- Replace replace specific char
SELECT first_name, REPLACE(first_name, 'A','Z')
FROM employee_demographics;

-- LOCATE 
SELECT LOCATE('e','Alexdender');# return  the position of char.

SELECT first_name, LOCATE('A',first_name)
FROM employee_demographics;

-- concatinate
SELECT first_name, last_name,
CONCAT(first_name,' ' ,last_name)
FROM employee_demographics;

