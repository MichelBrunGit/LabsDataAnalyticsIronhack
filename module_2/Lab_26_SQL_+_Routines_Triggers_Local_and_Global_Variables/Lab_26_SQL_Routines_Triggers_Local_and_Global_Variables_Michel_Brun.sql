USE employees_mod;

-- Create a procedure that will provide the average salary of all employees.
DELIMITER $$
CREATE PROCEDURE avgsalary()
BEGIN
SELECT avg(salary)
FROM t_salaries;
END$$

-- Create a procedure called ‘emp_info’ that uses as parameters the first 
-- and the last name of an individual, and returns their employee number.

DELIMITER $$
CREATE PROCEDURE emp_info(in first_name1 text, last_name1 text)
BEGIN
SELECT emp_no as "employee number"
FROM t_employees
WHERE first_name = first_name1 AND last_name = last_name1;
END$$

-- Call the procedures
-- CALL avgsalary();
-- CALL emp_info("Mary","Sluis");

-- Create a function called ‘emp_info’ that takes for parameters the first and last name 
-- of an employee, and returns the salary from the newest contract of that employee. 
-- Hint: In the BEGIN-END block of this program, you need to declare and use two variables 
-- – v_max_from_date that will be of the DATE type, and v_salary, 
-- that will be of the DECIMAL (10,2) type.

DELIMITER $$ 
CREATE FUNCTION emp_info(first_name1 varchar(50), last_name1 varchar(50)) 
RETURNS DECIMAL (10,2)
DETERMINISTIC
BEGIN 
	DECLARE v_salary DECIMAL (10,2);
	DECLARE v_max_from_date date;
    
	SELECT max(s.from_date) INTO v_max_from_date
	FROM t_employees as e
	JOIN t_salaries as s ON e.emp_no = s.emp_no
    WHERE e.first_name = first_name1 AND e.last_name = last_name1;
    
    SELECT s.salary INTO v_salary
    FROM t_employees as e
	JOIN t_salaries as s ON e.emp_no = s.emp_no
    WHERE e.first_name = first_name1 AND e.last_name = last_name1 AND s.from_date=v_max_from_date;

RETURN v_salary;
END$$ 
DELIMITER ; 
DROP FUNCTION emp_info;

SELECT emp_info("Mary","Sluis");

-- check the results

SELECT s.salary as Salary
FROM t_employees as e
JOIN t_salaries as s ON e.emp_no = s.emp_no
WHERE e.first_name = "Mary" AND e.last_name = "Sluis"
ORDER BY s.to_date DESC
LIMIT 1;

-- Create a trigger that checks if the hire date of an employee is higher than 
-- the current date. If true, set this date to be the current date. 
-- Format the output appropriately (YY-MM-DD)
DELIMITER $$

CREATE TRIGGER before_employee_insert
BEFORE INSERT ON t_employees
FOR EACH ROW
BEGIN 
	IF NEW.hire_date > SYSDATE() THEN 
		SET NEW.hire_date = DATE_FORMAT(SYSDATE(), "%YY-%MM-%DD"); 
	END IF; 
END $$

DELIMITER ;
DROP TRIGGER before_employee_insert;

-- Create ‘i_hire_date’ and Drop the ‘i_hire_date’ index.

CREATE INDEX i_hire_date ON t_employees(hire_date); 
DROP INDEX i_hire_date ON t_employees;

-- Select all records from the ‘salaries’ table of people whose salary is higher than $89,000
-- per annum. Then, create an index on the ‘salary’ column of that table, and check if 
-- it has sped up the search of the same SELECT statement.

SELECT *
FROM t_salaries
WHERE salary > 89000;

CREATE INDEX i_salary ON t_salaries(salary); 

-- Yes there is a difference in time computing

-- Use Case statement and obtain a result set containing the employee number, first name, 
-- and last name of all employees with a number higher than 109990. 
-- Create a fourth column in the query, indicating whether this employee is also a manager, 
-- according to the data provided in the dept_manager table, or a regular employee.

SELECT e.emp_no, e.first_name, e.last_name,
CASE WHEN d.emp_no = e.emp_no THEN 'Manager'
-- or CASE WHEN d.emp_no IS NOT NULL THEN 'Manager'
ELSE 'Regular'
END AS Category
FROM t_employees as e
LEFT JOIN t_dept_manager as d ON e.emp_no = d.emp_no
WHERE e.emp_no > 109990;

-- Extract a dataset containing the following information about the managers: 
-- employee number, first name, and last name. Add two columns at the end – 
-- one showing the difference between the maximum and minimum salary of that employee, 
-- and another one saying whether this salary raise was higher than $30,000 or NOT.

SELECT e.emp_no, e.first_name, e.last_name, max(s.salary)-min(s.salary) as "Salary Diff.",
CASE WHEN max(s.salary)-min(s.salary) > 30000 THEN "Yes"
ELSE "No"
END AS "Raise higher than $30,000"
FROM t_employees as e
JOIN t_salaries as s ON e.emp_no = s.emp_no
GROUP BY e.emp_no;

-- Extract the employee number, first name, and last name of the first 100 employees, 
-- and add a fourth column, called “current_employee” saying “Is still employed” 
-- if the employee is still working in the company, or “Not an employee anymore” 
-- if they aren’t. Hint: You’ll need to use data from both the ‘employees’ 
-- and the ‘dept_emp’ table to solve this exercise.

SELECT e.emp_no, e.first_name, e.last_name,
CASE WHEN d.to_date < SYSDATE() THEN "Not an employee anymore"
ELSE "Is still employed"
END AS "current_employee"
FROM t_employees as e
LEFT JOIN t_dept_emp as d ON e.emp_no = d.emp_no
GROUP BY e.emp_no
LIMIT 100;







