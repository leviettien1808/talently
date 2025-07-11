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