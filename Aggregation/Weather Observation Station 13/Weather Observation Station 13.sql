-- This query calculates the rounded sum of latitude values for records in the "station" table
-- where the latitude is within the specified range.

SELECT
    ROUND(SUM(lat_n), 4) AS rounded_sum_lat -- Calculate and round the sum of latitude values
FROM
    station
WHERE
    lat_n BETWEEN 38.7880 AND 137.2345; -- Filter records where latitude is within the specified range
