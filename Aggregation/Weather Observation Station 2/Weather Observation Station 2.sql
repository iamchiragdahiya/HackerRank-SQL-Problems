-- This query calculates the rounded sum of latitude and longitude values for all records in the "station" table.

SELECT
    ROUND(SUM(lat_n), 2) AS rounded_sum_lat, -- Calculate and round the sum of latitude values
    ROUND(SUM(long_w), 2) AS rounded_sum_long -- Calculate and round the sum of longitude values
FROM
    station;
