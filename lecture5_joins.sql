-- joins

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_salary;

-- inner join return rows that are same on both the table 
# ON COLUMNS CONDITION

SELECT * 
FROM employee_demographics
INNER JOIN employee_salary
   ON employee_id = employee_id
;
-- above section error because employee id patga nahi cal raha hai kis table ka hai 
-- is ke liye ambituous error araha hai.
SELECT * 
FROM employee_demographics 
INNER JOIN employee_salary 
   ON employee_demographics.employee_id =  employee_salary.employee_id
;

# here we are missing no. 2 because it does not have the same vlaue in row

SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
   ON dem.employee_id =  sal.employee_id
;


-- specific columns in innner join.
SELECT dem.employee_id, age, occupation # error that employee_id is ambigiuos
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
   ON dem.employee_id =  sal.employee_id
;

-- outer join has 2 type left and right join 

#LEFT JOIN -> take every thing from left table even no match and only return matchs from right table.
SELECT *  
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal # IT also can be LEFT OUTER JOIN
   ON dem.employee_id =  sal.employee_id
;


-- RIGHT JOIN
SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal 
   ON dem.employee_id =  sal.employee_id
;


-- SELF JOIN
# EXAMPLE TO IMPLEMENT TO BE A SECRET SANTA TO ONE TEAM MATE

SELECT * 
FROM employee_salary emp1
JOIN employee_salary emp2
   ON emp1.employee_id + 1 =  emp2.employee_id
;
# so according to this secret santa fro each is decided

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,

emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp

FROM employee_salary emp1
JOIN employee_salary emp2
   ON emp1.employee_id + 1 =  emp2.employee_id
;

SELECT * 
FROM parks_departments; 

-- join multiple table // imp 

SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal 
   ON dem.employee_id =  sal.employee_id
INNER JOIN parks_departments AS pd
   ON sal.dept_id = pd.department_id
;