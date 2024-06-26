-- Case statements

SELECT first_name,
last_name,age,
CASE
    WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'OLD'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket
FROM employee_demographics;


-- example : bonus and pay incre at end of year.
-- pay incr and bonus

-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10% bonus

SELECT  first_name, last_name, salary,
CASE
    WHEN salary < 50000 THEN  salary + (salary * 0.05)# or it could be salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07# 7 % incre
END AS New_salary,
CASE
    WHEN dept_id = 6 THEN salary * 1.10 # hre 10 % bonus
END AS Bonus

FROM employee_salary;



SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;