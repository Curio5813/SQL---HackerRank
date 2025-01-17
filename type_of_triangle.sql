/*
 Write a query identifying the type of each record in the TRIANGLES table using its three
 side lengths. Output one of the following statements for each record in the table:

 - Equilateral: It's a triangle with  sides of equal length.
 - Isosceles: It's a triangle with  sides of equal length.
 - Scalene: It's a triangle with  sides of differing lengths.
 - Not A Triangle: The given values of A, B, and C don't form a triangle.
*/


CREATE TABLE TRIANGLES (
    A INTEGER,
    B INTEGER,
    C INTEGER
);

INSERT INTO TRIANGLES (A, B, C) VALUES (20, 20, 23);
INSERT INTO TRIANGLES (A, B, C) VALUES (20, 20, 20);
INSERT INTO TRIANGLES (A, B, C) VALUES (20, 21, 22);

SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B AND A != C OR A = C AND A != B OR B = C AND B != A THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;




