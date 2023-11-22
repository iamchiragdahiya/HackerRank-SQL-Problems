-- Create a new database named 'triangle_database' (you can replace 'triangle_database' with your desired database name)
CREATE DATABASE IF NOT EXISTS triangle_database;

-- Switch to the newly created database
USE triangle_database;

-- Create a table named 'triangles' with columns A, B, and C
CREATE TABLE IF NOT EXISTS triangles (
    A INT,
    B INT,
    C INT
);

-- Insert data into the 'triangles' table
INSERT INTO triangles (A, B, C) VALUES
(10, 10, 10),
(11, 11, 11),
(30, 32, 30),
(40, 40, 40),
(20, 20, 21),
(21, 21, 21),
(20, 22, 21),
(20, 20, 40),
(20, 22, 21),
(30, 32, 41),
(50, 22, 51),
(20, 12, 61),
(20, 22, 50),
(50, 52, 51),
(80, 80, 80);

-- Display the contents of the 'triangles' table
SELECT * FROM triangles;
