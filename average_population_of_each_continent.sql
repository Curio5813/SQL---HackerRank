/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent)
and their respective average city populations (CITY.Population) rounded down to the nearest
integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT
    CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM
    CITY, COUNTRY
WHERE
    COUNTRYCODE = CODE
GROUP BY CONTINENT;
