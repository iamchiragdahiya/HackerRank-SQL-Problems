-- This query retrieves the rounded longitude value for records in the "station" table
-- where the latitude is equal to the maximum latitude value below 137.2345.

SELECT
    ROUND(long_w, 4) AS rounded_long_w -- Retrieve and round the longitude value
FROM
    station
WHERE
    lat_n = (
        -- Subquery: Find the maximum latitude below 137.2345
        SELECT
            MAX(lat_n) AS rounded_max_lat 
        FROM
            station
        WHERE
            lat_n < 137.2345
    );
