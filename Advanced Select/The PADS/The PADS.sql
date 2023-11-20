-- Common Table Expression (CTE) to count occupations and order them
WITH cte2 AS (
    -- Select distinct occupations and count occurrences
    SELECT occupation, COUNT(occupation) AS cnt
    FROM occupations
    GROUP BY occupation
    -- Order the CTE by count and occupation (may not affect final result order)
    ORDER BY cnt, occupation
)

-- Main query: Concatenate 'name' with the first character of 'occupation'
-- Union with a message about the total count of each occupation (converted to lowercase)
-- Order the entire result set by the 'formatted_result' column.
SELECT CONCAT(name, '(', SUBSTR(occupation, 1, 1), ')') AS formatted_result
FROM occupations

UNION

SELECT CONCAT('There are a total of ', cnt, ' ', LOWER(occupation), 's.') AS formatted_result
FROM cte2

ORDER BY formatted_result; -- Order the final result by the 'formatted_result' column.
-- Common Table Expression (CTE) to count occupations and order them
WITH cte2 AS (
    -- Select distinct occupations and count occurrences
    SELECT occupation, COUNT(occupation) AS cnt
    FROM occupations
    GROUP BY occupation
    -- Order the CTE by count and occupation (may not affect final result order)
    ORDER BY cnt, occupation
)

-- Main query: Concatenate 'name' with the first character of 'occupation'
-- Union with a message about the total count of each occupation (converted to lowercase)
-- Order the entire result set by the 'formatted_result' column.
SELECT CONCAT(name, '(', SUBSTR(occupation, 1, 1), ')') AS formatted_result
FROM occupations

UNION

SELECT CONCAT('There are a total of ', cnt, ' ', LOWER(occupation), 's.') AS formatted_result
FROM cte2

ORDER BY formatted_result; -- Order the final result by the 'formatted_result' column.
