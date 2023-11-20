-- Select cities from the 'STATION' table based on specific patterns.
-- The WHERE clause filters cities based on various conditions using the LIKE operator.
-- The patterns check if the lowercase version of the 'city' starts with one vowel and ends with another vowel.
-- For example, 'a%a' checks for cities starting with 'a' and ending with 'a'.

select city
from STATION
where 
    lower(city) like 'a%a' -- Cities starting with 'a' and ending with 'a'
    or lower(city) like 'a%e' -- Cities starting with 'a' and ending with 'e'
    or lower(city) like 'a%i' -- Cities starting with 'a' and ending with 'i'
    or lower(city) like 'a%o' -- Cities starting with 'a' and ending with 'o'
    or lower(city) like 'a%u' -- Cities starting with 'a' and ending with 'u'
    or lower(city) like 'e%a' -- Cities starting with 'e' and ending with 'a'
    or lower(city) like 'e%e' -- Cities starting with 'e' and ending with 'e'
    or lower(city) like 'e%i' -- Cities starting with 'e' and ending with 'i'
    or lower(city) like 'e%o' -- Cities starting with 'e' and ending with 'o'
    or lower(city) like 'e%u' -- Cities starting with 'e' and ending with 'u'
    or lower(city) like 'i%a' -- Cities starting with 'i' and ending with 'a'
    or lower(city) like 'i%e' -- Cities starting with 'i' and ending with 'e'
    or lower(city) like 'i%i' -- Cities starting with 'i' and ending with 'i'
    or lower(city) like 'i%o' -- Cities starting with 'i' and ending with 'o'
    or lower(city) like 'i%u' -- Cities starting with 'i' and ending with 'u'
    or lower(city) like 'o%a' -- Cities starting with 'o' and ending with 'a'
    or lower(city) like 'o%e' -- Cities starting with 'o' and ending with 'e'
    or lower(city) like 'o%i' -- Cities starting with 'o' and ending with 'i'
    or lower(city) like 'o%o' -- Cities starting with 'o' and ending with 'o'
    or lower(city) like 'o%u' -- Cities starting with 'o' and ending with 'u'
    or lower(city) like 'u%a' -- Cities starting with 'u' and ending with 'a'
    or lower(city) like 'u%e' -- Cities starting with 'u' and ending with 'e'
    or lower(city) like 'u%i' -- Cities starting with 'u' and ending with 'i'
    or lower(city) like 'u%o' -- Cities starting with 'u' and ending with 'o'
    or lower(city) like 'u%u'; -- Cities starting with 'u' and ending with 'u'
