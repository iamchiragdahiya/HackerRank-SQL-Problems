-- Select the 'name' column from the 'employee' table
-- where 'salary' is greater than 2000 and 'months' is less than 10.
-- Order the results by the 'employee_id' column.
SELECT name
FROM employee
WHERE salary > 2000 -- Filter employees with a salary greater than 2000
  AND months < 10   -- Filter employees with months less than 10
ORDER BY employee_id; -- Order the results by the 'employee_id' column in ascending order.
