-- Stored procedures

select *
from employee_salary
where salary >= 50000;

# create # DELIMITER IS ; WE USE TO END THE QUERY 
DELIMITER $$ 
create procedure large_salaries3()
BEGIN
   select *
   from employee_salary
   where salary >= 50000;
   select *
   from employee_salary
   where salary >= 10000;
END $$

DELIMITER ;

# call
call large_salaries3();




-- USING PARAMETRES
DELIMITER $$ 
create procedure large_salaries5(id INT)
BEGIN
   select salary
   from employee_salary
   where employee_id = id
   ;
END $$
DELIMITER ;
call large_salaries5(1);


