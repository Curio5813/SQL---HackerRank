/*
Samantha was tasked with calculating the average monthly salaries for all
employees in the EMPLOYEES table, but did not realize her keyboard's  key
was broken until after completing the calculation. She wants your help finding
the difference between her miscalculation (using salaries with any zeros
removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries),
and round it up to the next integer.
*/

CREATE TABLE EMPLOYEES (ID INTEGER, Name VARCHAR(50), Salary INTEGER);

INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Kristeen', 1420);
INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Ashley', 2006);
INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Julia', 2210);
INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Maria', 3000);

SELECT ROUND(AVG(EMPLOYEES.Salary), 0) FROM EMPLOYEES;

INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Kristeen', 142);
INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Ashley', 26);
INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Julia', 221);
INSERT INTO EMPLOYEES (ID, Name, Salary) VALUE(1, 'Maria', 3);

SELECT ROUND(AVG(Salary)) FROM EMPLOYEES;