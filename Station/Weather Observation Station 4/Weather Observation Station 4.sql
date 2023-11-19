-- Select the count of all rows in the 'station' table for the 'city' column
-- minus the count of distinct values in the 'city' column.

-- This query calculates the difference between the total number of cities and
-- the number of unique (distinct) cities in the 'station' table.

SELECT
    COUNT(city) - COUNT(DISTINCT city)
FROM
    station;
