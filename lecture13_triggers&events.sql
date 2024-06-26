-- Triggers and events 
# trigger is the block of code which execute automatically when an events takes place in code

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
    AFTER INSERT ON employee_salary
    FOR EACH ROW  
BEGIN
   INSERT INTO employee_demographics (employee_id, first_name, last_name)
   VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'ABC', 'PQR', 'hob', 200000 , NULL); 


-- EVENTS : CHECK IF AGE > 60 RETIRE HIM REMOVE HIS DATA FROM TABLE

SELECT * 
FROM employee_demographics;

DELIMITER $$
CREATE EVENT delete_retires
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%'; # if event schedyler is off
--  if i  don't have permission to delete thimgs then can change the
-- settings go to edit last prefrence
-- sql editor   last check box should be unchecked.


