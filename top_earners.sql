/*
We define an employee's total earnings to be their monthly salary x months
worked, and the maximum total earnings to be the maximum total earnings for
any employee in the Employee table. Write a query to find the maximum total
earnings for all employees as well as the total number of employees who
have maximum total earnings. Then print these values as space-separated
integers.
*/

CREATE TABLE Employee (employee_id INTEGER, name VARCHAR(50), months INTEGER, salary INTEGER);

INSERT INTO Employee (employee_id, name, months, salary) VALUES (12228, 'Rose', 15, 1968);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (33645, 'Angela', 1, 3443);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (45692, 'Frank', 17, 1608);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (56118, 'Patrick', 7, 1345);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (59725, 'Lisa', 11, 2330);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (74197, 'Kimberly', 16, 4372);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (78454, 'Bonnie', 8, 1771);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (83565, 'Michael', 6, 2017);
INSERT INTO Employee(employee_id, name, months, salary) VALUES (98607, 'Todd', 5, 3396);
INSERT INTO Employee (employee_id, name, months, salary) VALUES (99989, 'Joe', 9, 3573);

SELECT
    MAX(total_earnings),
    COUNT(*)
FROM
    (SELECT
         Employee.salary * Employee.months AS total_earnings
     FROM
         Employee) AS earnings
WHERE
    earnings.total_earnings = (SELECT MAX(Employee.salary * Employee.months) FROM Employee);