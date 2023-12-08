-- This query selects and rounds the latitude value from the middle row of the "station" table.

SELECT
    ROUND(lat_n, 4) AS rounded_lat_n -- Select and round the latitude value
FROM
    (
        -- Subquery: Assign row numbers to each record using ROW_NUMBER()
        SELECT
            lat_n,
            ROW_NUMBER() OVER (ORDER BY lat_n) AS indeks -- Assign row numbers
        FROM
            station
    ) d
WHERE
    indeks = (
        -- Subquery: Find the row number corresponding to the median
        SELECT
            CEIL(COUNT(*) / 2) -- Calculate the median row number
        FROM
            station
    );
