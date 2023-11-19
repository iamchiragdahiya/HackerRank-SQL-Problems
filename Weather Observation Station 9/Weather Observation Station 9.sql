-- Select distinct cities from the 'station' table where the lowercase version of 'city'
-- does not start with any vowel ('a', 'e', 'i', 'o', or 'u').
-- The NOT operator negates the entire set of conditions within the parentheses.

SELECT DISTINCT city
FROM station
WHERE NOT (
    LOWER(city) LIKE 'a%' -- Exclude cities starting with 'a'
    OR LOWER(city) LIKE 'e%' -- Exclude cities starting with 'e'
    OR LOWER(city) LIKE 'i%' -- Exclude cities starting with 'i'
    OR LOWER(city) LIKE 'o%' -- Exclude cities starting with 'o'
    OR LOWER(city) LIKE 'u%' -- Exclude cities starting with 'u'
);
