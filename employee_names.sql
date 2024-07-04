/*
 Write a query that prints a list of employee names (i.e.: the name attribute)
 from the Employee table in alphabetical order.
 */

/*
CREATE TABLE Employee(
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    months INTEGER,
    salary INTEGER
);

USE HckerRank;

INSERT INTO Employee (name, months, salary) VALUES ('Rose', 15, 1968);
INSERT INTO Employee (name, months, salary) VALUES ('Angela', 1, 3443);
INSERT INTO Employee (name, months, salary) VALUES ('Frank', 17, 1608);
INSERT INTO Employee (name, months, salary) VALUES ('Patrick', 7, 1345);
INSERT INTO Employee (name, months, salary) VALUES ('Lisa', 11, 2330);
INSERT INTO Employee (name, months, salary) VALUES ('Kimberly', 16, 4372);
INSERT INTO Employee (name, months, salary) VALUES ('Bonnie', 8, 1771);
INSERT INTO Employee (name, months, salary) VALUES ('Michael', 6, 2017);
INSERT INTO Employee (name, months, salary) VALUES ('Todd', 5, 3396);
INSERT INTO Employee (name, months, salary) VALUES ('Joe', 9, 3573);
*/

SELECT name FROM Employee ORDER BY name ASC;