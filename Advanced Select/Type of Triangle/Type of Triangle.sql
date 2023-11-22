-- Selecting a case expression to determine the type of triangle
SELECT 
    CASE
        -- Checking if the sum of two sides is less than or equal to the third side
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        -- Checking if all three sides are equal
        WHEN A = B AND B = C THEN 'Equilateral'
        -- Checking if at least two sides are equal
        WHEN A = B AND B != C OR A = C AND B != C OR C = B AND B != A THEN 'Isosceles'
        -- If no sides are equal, it is a Scalene triangle
        WHEN A != B AND A != C AND B != C THEN 'Scalene'
    END
FROM 
    triangles;
