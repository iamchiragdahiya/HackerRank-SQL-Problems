-- Select the 'name' column from the 'city' table
SELECT name

-- From the 'city' table, retrieve the names of cities
FROM city

-- Filter the results to only include rows where the 'countrycode' column, when converted to uppercase, is equal to 'JPN'
WHERE UPPER(countrycode) = 'JPN';
