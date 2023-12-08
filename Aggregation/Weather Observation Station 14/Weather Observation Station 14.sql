-- This query calculates the rounded maximum latitude value for records in the "station" table
-- where the latitude is less than 137.2345.

SELECT
    ROUND(MAX(lat_n), 4) AS rounded_max_lat -- Calculate and round the maximum latitude value
FROM
    station
WHERE
    lat_n < 137.2345; -- Filter records where latitude is less than 137.2345
