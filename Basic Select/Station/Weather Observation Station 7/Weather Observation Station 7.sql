-- Select distinct cities from the 'station' table.
-- The WHERE clause filters cities based on the conditions provided.
-- The conditions use the LIKE operator to check if the lowercase version of the 'city' ends with
-- any of the vowels 'a', 'e', 'i', 'o', or 'u'.
select distinct city
from station
where lower(city) like '%a' -- Cities ending with 'a'
   or lower(city) like '%e' -- Cities ending with 'e'
   or lower(city) like '%i' -- Cities ending with 'i'
   or lower(city) like '%o' -- Cities ending with 'o'
   or lower(city) like '%u'; -- Cities ending with 'u'
