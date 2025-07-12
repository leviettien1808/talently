-- MySQL
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL;


-- Postgres
-- ALTER TABLE users
-- ALTER COLUMN full_name SET NOT NULL,
-- ALTER COLUMN current_status SET NOT NULL;


-- SQLite
-- Step1:
-- ALTER TABLE users RENAME TO users_old;
-- Step2:
-- CREATE TABLE users (
--     full_name TEXT NOT NULL,
--     yearly_salary INTEGER,
--     current_status TEXT CHECK (current_status IN ('employed', 'self-employed', 'unemployed')) NOT NULL
-- );
-- Step3:
-- INSERT INTO users (full_name, yearly_salary, current_status)
-- SELECT full_name, yearly_salary, current_status
-- FROM users_old
-- WHERE full_name IS NOT NULL AND current_status IS NOT NULL;
-- Step4:
-- DROP TABLE users_old;