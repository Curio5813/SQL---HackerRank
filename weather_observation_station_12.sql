/*
 Query the list of CITY names from STATION that either do not start with
 vowels and do not end with vowels. Your result cannot contain duplicates.
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
WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u')
AND RIGHT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
