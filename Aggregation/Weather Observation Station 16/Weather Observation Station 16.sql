-- This query retrieves the rounded minimum latitude value for records in the "station" table
-- where the latitude is greater than 38.7780.

SELECT
    ROUND(MIN(lat_n), 4) AS rounded_min_lat -- Retrieve and round the minimum latitude value
FROM
    station
WHERE
    lat_n > 38.7780; -- Filter records where latitude is greater than 38.7780
