-- Selecting the count of cities whose population is greater than 100,000
SELECT COUNT(name) 
FROM city 
WHERE population > 100000;
