-- Select the 'name' column from the 'city' table
SELECT name
FROM city
-- Filter the results based on the following conditions:
WHERE countrycode = 'USA'  -- Select cities with 'countrycode' equal to 'USA'
  AND population > 120000; -- Select cities with a 'population' greater than 120,000
