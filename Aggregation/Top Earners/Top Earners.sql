-- This query calculates the total earnings (tot_ear) for each employee
-- by multiplying the number of months worked (months) by the monthly salary (salary).
-- It then counts the occurrences of each total earnings value.

SELECT
    tot_ear, -- Select the total earnings value
    COUNT(tot_ear) -- Count the occurrences of each total earnings value
FROM
    (
        -- Subquery: Calculate total earnings for each employee
        SELECT
            *,
            (months * salary) AS tot_ear -- Calculate total earnings
        FROM
            employee
    ) e
WHERE
    tot_ear = (
        -- Subquery: Find the maximum total earnings across all employees
        SELECT
            MAX(months * salary)
        FROM
            employee
    )
GROUP BY
    tot_ear; -- Group the results by total earnings value
