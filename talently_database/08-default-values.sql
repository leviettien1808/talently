-------------------- CREATE TABLE --------------------
-- MySQL/Postgres
CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_salary FLOAT(5, 2), -- Approximation
    yearly_salary NUMERIC(5, 2), -- Exact value
    is_hiring BOOLEAN DEFAULT FALSE -- Add default value
);

-- SQLite
-- CREATE TABLE employers (
--     company_name TEXT,
--     company_address TEXT,
--     yearly_salary REAL
--     is_hiring INTEGER DEFAULT 0 -- 0 (false) and 1 (true)
-- );



-------------------- CREATE TABLE --------------------
-- MySQL/Postgres
CREATE TABLE conversations (
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Add default value
);

-- SQLite
-- CREATE TABLE conversations (
--     user_name TEXT,
--     employer_name TEXT,
--     message TEXT,
--     date_sent TEXT DEFAULT (datetime('now', 'localtime'))
-- );