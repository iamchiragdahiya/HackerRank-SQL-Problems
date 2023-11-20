-- Select distinct cities from the 'STATION' table where the lowercase version of 'city'
-- does not match any of the specified patterns, where a vowel is followed by another vowel.
-- The NOT operator negates the entire set of conditions within the parentheses.

SELECT DISTINCT city
FROM STATION
WHERE NOT (
    LOWER(city) LIKE 'a%a' -- Exclude cities starting with 'a' and followed by 'a'
    OR LOWER(city) LIKE 'a%e' -- Exclude cities starting with 'a' and followed by 'e'
    OR LOWER(city) LIKE 'a%i' -- Exclude cities starting with 'a' and followed by 'i'
    OR LOWER(city) LIKE 'a%o' -- Exclude cities starting with 'a' and followed by 'o'
    OR LOWER(city) LIKE 'a%u' -- Exclude cities starting with 'a' and followed by 'u'
    OR LOWER(city) LIKE 'e%a' -- Exclude cities starting with 'e' and followed by 'a'
    OR LOWER(city) LIKE 'e%e' -- Exclude cities starting with 'e' and followed by 'e'
    OR LOWER(city) LIKE 'e%i' -- Exclude cities starting with 'e' and followed by 'i'
    OR LOWER(city) LIKE 'e%o' -- Exclude cities starting with 'e' and followed by 'o'
    OR LOWER(city) LIKE 'e%u' -- Exclude cities starting with 'e' and followed by 'u'
    OR LOWER(city) LIKE 'i%a' -- Exclude cities starting with 'i' and followed by 'a'
    OR LOWER(city) LIKE 'i%e' -- Exclude cities starting with 'i' and followed by 'e'
    OR LOWER(city) LIKE 'i%i' -- Exclude cities starting with 'i' and followed by 'i'
    OR LOWER(city) LIKE 'i%o' -- Exclude cities starting with 'i' and followed by 'o'
    OR LOWER(city) LIKE 'i%u' -- Exclude cities starting with 'i' and followed by 'u'
    OR LOWER(city) LIKE 'o%a' -- Exclude cities starting with 'o' and followed by 'a'
    OR LOWER(city) LIKE 'o%e' -- Exclude cities starting with 'o' and followed by 'e'
    OR LOWER(city) LIKE 'o%i' -- Exclude cities starting with 'o' and followed by 'i'
    OR LOWER(city) LIKE 'o%o' -- Exclude cities starting with 'o' and followed by 'o'
    OR LOWER(city) LIKE 'o%u' -- Exclude cities starting with 'o' and followed by 'u'
    OR LOWER(city) LIKE 'u%a' -- Exclude cities starting with 'u' and followed by 'a'
    OR LOWER(city) LIKE 'u%e' -- Exclude cities starting with 'u' and followed by 'e'
    OR LOWER(city) LIKE 'u%i' -- Exclude cities starting with 'u' and followed by 'i'
    OR LOWER(city) LIKE 'u%o' -- Exclude cities starting with 'u' and followed by 'o'
    OR LOWER(city) LIKE 'u%u' -- Exclude cities starting with 'u' and followed by 'u'
);
