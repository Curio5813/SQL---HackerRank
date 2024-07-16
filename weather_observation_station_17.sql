/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater
than 38.7780. Round your answer to 4 decimal places.
*/


SELECT ROUND(STATION.LONG_W, 4) FROM STATION WHERE STATION.LAT_N > 38.7780 ORDER BY STATION.LAT_N ASC LIMIT 1;