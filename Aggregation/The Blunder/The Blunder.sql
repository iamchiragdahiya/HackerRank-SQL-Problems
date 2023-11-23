-- Selecting the rounded average salary of all employees
-- Subtracting the rounded average salary after replacing 0 values with null
SELECT 
    ROUND(AVG(salary)) 
    - ROUND(AVG(REPLACE(salary, 0, ''))) 
FROM 
    employees;
