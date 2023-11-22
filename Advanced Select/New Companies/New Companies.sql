-- Selecting columns for the output
SELECT 
    company_code,
    founder,
    -- Counting the distinct lead manager codes for each company
    COUNT(DISTINCT lead_manager_code) AS lead_manager_count,
    -- Counting the distinct senior manager codes for each company
    COUNT(DISTINCT senior_manager_code) AS senior_manager_count,
    -- Counting the distinct manager codes for each company
    COUNT(DISTINCT manager_code) AS manager_count,
    -- Counting the distinct employee codes for each company
    COUNT(DISTINCT employee_code) AS employee_count
FROM 
    employee 
-- Performing a left join with the 'company' table using the 'company_code' column
LEFT JOIN 
    company USING(company_code)
-- Grouping the results by company_code and founder
GROUP BY 
    company_code, founder
-- Ordering the results by company_code
ORDER BY 
    company_code;
