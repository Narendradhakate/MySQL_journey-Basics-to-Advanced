SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name,last_name
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
age,
(age+10)*10+10
FROM parks_and_recreation.employee_demographics;

# this is comments
# PEMDAS is order of operation for arithmetic or map -> 
# parenthesis, exponent, mul, div, add, sub.

# using distinct 
SELECT distinct first_name,gender
FROM parks_and_recreation.employee_demographics;
