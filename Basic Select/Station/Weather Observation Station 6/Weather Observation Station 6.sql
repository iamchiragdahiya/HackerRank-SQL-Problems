-- Select distinct cities from the 'station' table.
-- The WHERE clause filters cities based on the conditions provided.
-- The conditions are using the LIKE operator to check if the lowercase version of the 'city' starts with
-- any of the vowels 'a', 'e', 'i', 'o', or 'u'.
select distinct city
from station
where lower(city) like 'a%' -- Cities starting with 'a'
   or lower(city) like 'e%' -- Cities starting with 'e'
   or lower(city) like 'i%' -- Cities starting with 'i'
   or lower(city) like 'o%' -- Cities starting with 'o'
   or lower(city) like 'u%'; -- Cities starting with 'u'
