-- sub queries:

# only want to select employee who wroks in parks and creation department

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
WHERE employee_id IN (
            SELECT employee_id
			FROM employee_salary
            WHERE dept_id =1)
;# yaha pe ron nahi  rahe gaya kyu ki vo salary table me nahi tha

SELECT *
FROM employee_demographics
WHERE employee_id IN (
            SELECT employee_id, dept_id # error operand should contain 1 col
			FROM employee_salary
            WHERE dept_id =1);
            
-- example comaprison salaary of each emplyee with avg sallary of all employee
 SELECT first_name, salary, AVG(salary)
 FROM employee_salary
 Group BY first_name, salary;
# above will not give as required
 SELECT first_name, salary, 
        ( SELECT AVG(salary)
          FROM employee_salary)
 FROM employee_salary         
 Group BY first_name, salary;



SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- now subquery can be also start from 
SELECT *
FROM
(
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
) AS Agg_table;

# this will also return the same as above query

SELECT gender, AVG(`MAX(age)`) # backtick is uesd to name the column
FROM
(
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
) AS Agg_table
GROUP BY gender;