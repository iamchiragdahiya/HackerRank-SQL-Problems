-- Select distinct cities from the 'station' table where the lowercase version of 'city'
-- does not end with any vowel ('a', 'e', 'i', 'o', or 'u').
-- The NOT operator negates the entire set of conditions within the parentheses.

SELECT DISTINCT city
FROM station
WHERE NOT (
    LOWER(city) LIKE '%a' -- Exclude cities ending with 'a'
    OR LOWER(city) LIKE '%e' -- Exclude cities ending with 'e'
    OR LOWER(city) LIKE '%i' -- Exclude cities ending with 'i'
    OR LOWER(city) LIKE '%o' -- Exclude cities ending with 'o'
    OR LOWER(city) LIKE '%u' -- Exclude cities ending with 'u'
);
