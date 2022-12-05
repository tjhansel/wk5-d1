--List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

--Find the birthdate for the youngest employee.
SELECT birthdate FROM employee WHERE 



-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to IN(
    SELECT employee_id FROM employee
    WHERE last_name = 'Edwards' AND first_name = 'Nancy'
);
--Count how many people live in Lethbridge.
SELECT * FROM employee
GROUP BY city