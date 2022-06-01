-- EMPLOYEE
-- email VARCHAR (60)
-- employee_id INTEGER
-- last_name VARCHAR (20)
-- first_name VARCHAR (20)
-- title VARCHAR (30)
-- reports_to INTEGER
-- birth_date TIMESTAMP
-- hire_date TIMESTAMP
-- address VARCHAR (70)
-- city VARCHAR (40)
-- state VARCHAR (40)
-- country VARCHAR (40)
-- postal_code VARCHAR (10)
-- phone VARCHAR (24)
-- fax VARCHAR (24)
-- List all employee first and last names only that live in Calgary.
SELECT * FROM employee WHERE city = 'Calgary';
-- Find the birthdate for the youngest employee.
SELECT MAX(birth_date) from employee;
-- Find the birthdate for the oldest employee.
SELECT MIN(birth_date) from employee;
-- Find everyone that reports to Nancy Edwards (use the ReportsTo column).
SELECT * FROM employee WHERE reports_to = 2;
-- You will need to query the employee table to find the id for Nancy Edwards
Yeah, it was SELECT * FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards';
-- Count how many people live in Lethbridge.
SELECT COUNT(*) from employee WHERE city = 'Lethbridge';