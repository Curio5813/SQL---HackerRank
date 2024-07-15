/*
Query the following two values from the STATION table:

1 - The sum of all values in LAT_N rounded to a scale of  decimal 2 places.
2 - The sum of all values in LONG_W rounded to a scale of  decimal 2 places.
*/

CREATE TABLE STATION (ID NUMERIC, CITY VARCHAR(21), STATE VARCHAR(2), LAT_N NUMERIC, LONG_W NUMERIC);

SELECT ROUND(SUM(STATION.LAT_N), 2), ROUND(SUM(STATION.LONG_W), 2) FROM STATION;

