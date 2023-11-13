-- Selecting distinct cities from the 'station' table
-- where the 'id' is an even number (id%2=0)
SELECT DISTINCT(city)
FROM station
WHERE id % 2 = 0;
