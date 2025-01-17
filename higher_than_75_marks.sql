/*
 Query the Name of any student in STUDENTS who scored higher than  Marks.
 Order your output by the last three characters of each name. If two or
 more students both have names ending in the same last three characters
 (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
 */

/*
CREATE DATABASE UNIVERSITY;

USE UNIVERSITY;

CREATE TABLE STUDENTS(
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Marks INTEGER NOT NULL
);

INSERT INTO STUDENTS (Name, Marks) VALUES ('Ashley', 81);
INSERT INTO STUDENTS (Name, Marks) VALUES ('Samantha', 75);
INSERT INTO STUDENTS (Name, Marks) VALUES ('Julia', 76);
INSERT INTO STUDENTS (Name, Marks) VALUES ('Belvet', 84);
*/

SELECT STUDENTS.Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(NAME, 3), ID ASC;