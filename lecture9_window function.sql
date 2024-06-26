-- Window functions

SELECT gender, AVG(salary) AS Avg_sal 
FROM employee_demographics dem
JOIN employee_salary  sal
   ON  dem.employee_id = sal.employee_id
GROUP BY gender;




# now use window function:no need to use group by

SELECT gender, AVG(salary) OVER(Partition by gender)
FROM employee_demographics dem
JOIN employee_salary  sal
   ON  dem.employee_id = sal.employee_id
;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(Partition by gender)
FROM employee_demographics dem
JOIN employee_salary  sal
   ON  dem.employee_id = sal.employee_id
;




-- new example sum function 
SELECT dem.first_name, dem.last_name, gender,
SUM(salary) OVER(Partition by gender)
FROM employee_demographics dem
JOIN employee_salary  sal
   ON  dem.employee_id = sal.employee_id
;

-- now rolling total 
# here salary is adding up 
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(Partition by gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem
JOIN employee_salary  sal
   ON  dem.employee_id = sal.employee_id
;


-- number_row and rank observ it.
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary  sal
   ON  dem.employee_id = sal.employee_id
;