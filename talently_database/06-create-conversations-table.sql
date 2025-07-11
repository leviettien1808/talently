-------------------- CREATE TABLE --------------------
-- MySQL/Postgres
CREATE TABLE conversations (
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP
);

-- SQLite
-- CREATE TABLE conversations (
--     user_name TEXT,
--     employer_name TEXT,
--     message TEXT,
--     date_sent TEXT DEFAULT (datetime('now', 'localtime'))
-- );