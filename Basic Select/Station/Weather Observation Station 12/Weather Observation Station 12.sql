-- Select distinct cities from the 'STATION' table where the 'city' is not in a subquery result.
-- The subquery filters cities based on whether the lowercase version of 'city' matches specific patterns.

SELECT DISTINCT city
FROM STATION
WHERE city NOT IN (
    -- Subquery: Select cities from 'STATION' where the lowercase version of 'city' matches specific patterns.
    SELECT city
    FROM STATION
    WHERE LOWER(city) LIKE 'a%a' -- Cities starting and ending with 'a'
       OR LOWER(city) LIKE 'a%e' -- Cities starting with 'a' and ending with 'e'
       OR LOWER(city) LIKE 'a%i' -- Cities starting with 'a' and ending with 'i'
       OR LOWER(city) LIKE 'a%o' -- Cities starting with 'a' and ending with 'o'
       OR LOWER(city) LIKE 'a%u' -- Cities starting with 'a' and ending with 'u'
       OR LOWER(city) LIKE 'e%a' -- Cities starting with 'e' and ending with 'a'
       OR LOWER(city) LIKE 'e%e' -- Cities starting with 'e' and ending with 'e'
       OR LOWER(city) LIKE 'e%i' -- Cities starting with 'e' and ending with 'i'
       OR LOWER(city) LIKE 'e%o' -- Cities starting with 'e' and ending with 'o'
       OR LOWER(city) LIKE 'e%u' -- Cities starting with 'e' and ending with 'u'
       OR LOWER(city) LIKE 'i%a' -- Cities starting with 'i' and ending with 'a'
       OR LOWER(city) LIKE 'i%e' -- Cities starting with 'i' and ending with 'e'
       OR LOWER(city) LIKE 'i%i' -- Cities starting with 'i' and ending with 'i'
       OR LOWER(city) LIKE 'i%o' -- Cities starting with 'i' and ending with 'o'
       OR LOWER(city) LIKE 'i%u' -- Cities starting with 'i' and ending with 'u'
       OR LOWER(city) LIKE 'o%a' -- Cities starting with 'o' and ending with 'a'
       OR LOWER(city) LIKE 'o%e' -- Cities starting with 'o' and ending with 'e'
       OR LOWER(city) LIKE 'o%i' -- Cities starting with 'o' and ending with 'i'
       OR LOWER(city) LIKE 'o%o' -- Cities starting with 'o' and ending with 'o'
       OR LOWER(city) LIKE 'o%u' -- Cities starting with 'o' and ending with 'u'
       OR LOWER(city) LIKE 'u%a' -- Cities starting with 'u' and ending with 'a'
       OR LOWER(city) LIKE 'u%e' -- Cities starting with 'u' and ending with 'e'
       OR LOWER(city) LIKE 'u%i' -- Cities starting with 'u' and ending with 'i'
       OR LOWER(city) LIKE 'u%o' -- Cities starting with 'u' and ending with 'o'
       OR LOWER(city) LIKE 'u%u' -- Cities starting with 'u' and ending with 'u'
       OR LOWER(city) LIKE '%a'  -- Cities ending with 'a'
       OR LOWER(city) LIKE '%e'  -- Cities ending with 'e'
       OR LOWER(city) LIKE '%i'  -- Cities ending with 'i'
       OR LOWER(city) LIKE '%o'  -- Cities ending with 'o'
       OR LOWER(city) LIKE '%u'  -- Cities ending with 'u'
       OR LOWER(city) LIKE 'a%'  -- Cities starting with 'a'
       OR LOWER(city) LIKE 'e%'  -- Cities starting with 'e'
       OR LOWER(city) LIKE 'i%'  -- Cities starting with 'i'
       OR LOWER(city) LIKE 'o%'  -- Cities starting with 'o'
       OR LOWER(city) LIKE 'u%'  -- Cities starting with 'u'
);
