/*
 Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
*/

SELECT SUM(CITY.POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN';

