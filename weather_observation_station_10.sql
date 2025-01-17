/*
 Query the list of CITY names from STATION that do not end with vowels.
 Your result cannot contain duplicates.
 */


CREATE TABLE STATION(
    ID SERIAL PRIMARY KEY,
    CITY VARCHAR(21),
    STATE VARCHAR(2),
    LAT_N NUMERIC,
    LONG_N NUMERIC
);

SELECT DISTINCT STATION.CITY
FROM STATION
WHERE RIGHT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
