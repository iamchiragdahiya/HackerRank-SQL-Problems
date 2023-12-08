-- This query calculates the rounded sum of differences between
-- the maximum and minimum latitude values and the maximum and minimum longitude values for all records in the "station" table.

SELECT
    ROUND(MAX(lat_n) - MIN(lat_n) + (MAX(long_w) - MIN(long_w)), 4) AS rounded_sum_diff -- Calculate and round the sum of differences
FROM
    station;
