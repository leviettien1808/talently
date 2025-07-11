
-- MySQL
-- ALTER TABLE employers
-- MODIFY COLUMN yearly_salary FLOAT;

-- ALTER TABLE users
-- MODIFY COLUMN full_name VARCHAR(300);


-- Postgres
ALTER TABLE employers
ALTER COLUMN yearly_salary SET DATA TYPE FLOAT;

ALTER TABLE users
ALTER COLUMN full_name SET DATA TYPE VARCHAR(300);