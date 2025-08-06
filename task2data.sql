CREATE DATABASE DB;   -- created the database
USE DB;               -- To use the database

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    email TEXT
);


-- Inserting full data
INSERT INTO students (id, name, age, email)
VALUES (1, 'Amit Sharma', 22, 'amit@example.com');

-- Inserting with NULL value for email
INSERT INTO students (id, name, age, email)
VALUES (2, 'Priya Mehta', 20, NULL);

-- Inserting with NULL value for age
INSERT INTO students (id, name, age, email)
VALUES (3, 'Ravi Kumar', NULL, 'ravi@example.com');

-- Inserting with missing name
INSERT INTO students (id, name, age, email)
VALUES (4, NULL, 25, 'unknown@example.com');

-- Update the data

-- Updateing  Ravi's age
UPDATE students
SET age = 21
WHERE id = 3;

-- Updateing  missing name -------------------------------------
UPDATE students
SET name = 'Unknown'
WHERE id = 4 AND name IS NULL;
-- deleting a record

-- Delete a student with age greater than 24


DELETE FROM students
WHERE id = 4 AND age > 24;

select * from students;
