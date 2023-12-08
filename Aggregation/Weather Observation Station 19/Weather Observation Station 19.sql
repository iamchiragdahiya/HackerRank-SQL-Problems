-- This query calculates the rounded Euclidean distance between points defined by
-- the maximum and minimum latitude values and the maximum and minimum longitude values for all records in the "station" table.

SELECT
    ROUND(SQRT(POWER(MAX(lat_n) - MIN(lat_n), 2) + POWER(MAX(long_w) - MIN(long_w), 2)), 4) AS rounded_distance -- Calculate and round the Euclidean distance
FROM
    station;
