-- Create a Common Table Expression (CTE) named 'this'
-- Select all columns from the 'students' table and add a new column 'sub'
-- that contains a substring of three characters from the end of the 'name' column.
WITH this AS (
    SELECT *,
           -- Use the SUBSTR() function to extract a substring of three characters
           -- from the end of the 'name' column.
           SUBSTR(name, LENGTH(name) - 2, 3) AS sub
    FROM students
)

-- Select 'name' from the 'this' CTE where 'marks' is greater than 75
-- Order the results first by the 'sub' column and then by the 'id' column.
SELECT name
FROM this
WHERE marks > 75
-- Order the results by the 'sub' column in ascending order
-- and then by the 'id' column in ascending order.
ORDER BY sub ASC, id ASC;
