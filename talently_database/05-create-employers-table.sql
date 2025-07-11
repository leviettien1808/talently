-------------------- CREATE TABLE --------------------
-- MySQL/Postgres
CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_salary FLOAT(5, 2), -- Approximation
    yearly_salary NUMERIC(5, 2), -- Exact value
    is_hiring BOOLEAN
);


-- SQLite
-- CREATE TABLE employers (
--     company_name TEXT,
--     company_address TEXT,
--     yearly_salary REAL
--     is_hiring INTEGER -- 0 (false) and 1 (true)
-- );

-- When inserting, I got a warning that there was no is_hiring column. I looked at line 16 and saw that there was one. I didn't understand what was wrong so I added the column. Then I noticed that line 15 was missing the ','.
-- ALTER TABLE employers
-- ADD COLUMN is_hiring INTEGER DEFAULT 0;

-- Because the yearly_salary data type is incorrect due to the missing ',' in line 15, the data type needs to be corrected.
-- Step1:
-- ALTER TABLE employers RENAME TO employers_old;
-- Step2:
-- CREATE TABLE employers (
--     company_name TEXT,
--     company_address TEXT,
--     yearly_salary REAL,
--     is_hiring INTEGER -- 0 (false) and 1 (true)
-- );
-- Step3:
-- INSERT INTO employers (company_name, company_address, yearly_salary, is_hiring)
-- SELECT company_name, company_address, yearly_salary, is_hiring
-- FROM employers_old;
-- Step4:
-- DROP TABLE employers_old;