-- Select all columns (*) from the "city" table
SELECT * 

-- From the "city" table, retrieve rows that meet the specified condition
FROM city 

-- Filter the results based on the 'countrycode' column. The "upper" function is used to make the comparison case-insensitive.
WHERE UPPER(countrycode) = 'JPN';
