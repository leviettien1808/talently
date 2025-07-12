-- Case: create new table with a check constraint
-- CREATE TABLE users (
--     full_name VARCHAR(300) NOT NULL,
--     yearly_salary INT CHECK (yearly_salary > 0) -- Single check constraint
--     yearly_salary INT CHECK (yearly_salary > 0 AND ...) -- Combine check constraint
--     CHECK (yearly_salary < max_salary) -- All table, check yearly_salary with other column
-- );



-- Case: modify existing table to add a check constraint
-- Step 1:
-- MYSQL/Postgres/SQLite
UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Charlie Brown';
UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Fiona Apple';

-- Step 2:
-- MYSQL/Postgres
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);

-- SQLite
-- ALTER TABLE users RENAME TO users_old;
-- CREATE TABLE users (
--     full_name TEXT NOT NULL,
--     yearly_salary INTEGER CHECK (yearly_salary > 0),
--     current_status TEXT CHECK (current_status IN ('employed', 'self-employed', 'unemployed')) NOT NULL
-- );
-- INSERT INTO users (full_name, yearly_salary, current_status)
-- SELECT full_name, yearly_salary, current_status
-- FROM users_old;
-- DROP TABLE users_old;