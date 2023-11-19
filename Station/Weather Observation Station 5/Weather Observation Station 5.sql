-- Create a Common Table Expression (CTE) named 'this' 
-- that selects the 'city' and its corresponding length ('l') from the 'station' table.
-- The result is stored in a temporary table for further use.
with this as (
    select city, length(city) as l from station
)

-- Union of two SELECT statements:
-- 1. Select the city and length from the 'this' CTE where the length is the minimum among all cities.
--    The result is ordered by city and only the first row is selected using LIMIT.
-- 2. Select the city and length from the 'this' CTE where the length is the maximum among all cities.
--    The result is ordered by city and only the first row is selected using LIMIT.
-- The UNION ALL operator is used to combine the results of these two SELECT statements.
select city, l from this
where l = (select min(l) from this) -- Filter cities with the minimum length
order by 1
limit 1

union all

select city, l from this
where l = (select max(l) from this) -- Filter cities with the maximum length
order by 1
limit 1;
