/*
 Query a count of the number of cities in CITY having a Population larger than 100,000.
 */

CREATE TABLE CITY (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(17) NOT NULL,
    COUNTRYCODE VARCHAR(3) NOT NULL,
    DISTRICT VARCHAR(20) NOT NULL,
    POPULATION NUMERIC NOT NULL
);

SELECT COUNT(*) FROM CITY WHERE POPULATION > 100000 ;
