-------------------- CREATE TABLE --------------------
-- MySQL
CREATE TABLE users (
    full_name VARCHAR(200),
    year_salary INT,
    current_status ENUM('employed', 'self-employed', 'unemployed')
)

-- Postgres => We have to create a custom type first
-- CREATE TYPE employment_status AS ENUM ('employed', 'self-employed', 'unemployed');
-- CREATE TABLE users (
--     full_name VARCHAR(200),
--     year_salary INT,
--     current_status employment_status
-- );

-- SQLite
-- CREATE TABLE users (
--     full_name TEXT,
--     year_salary INTEGER,
--     current_status TEXT CHECK (current_status IN ('employed', 'self-employed', 'unemployed'))
-- );


-- Reference MySQL: https://dev.mysql.com/doc/refman/8.4/en/create-table.html
-- Reference Postgres: https://www.postgresql.org/docs/current/sql-createtable.html
-- Reference SQLite: https://www.sqlite.org/lang_createtable.html

-- Reference MySQL: https://dev.mysql.com/doc/refman/8.4/en/data-types.html
-- Reference Postgres: https://www.postgresql.org/docs/current/datatype.html
-- Reference SQLite: https://www.sqlite.org/datatype3.html


-- MySQL/Postgres/SQLite: old name is incorrect, we need to rename it
-- ALTER TABLE users
-- RENAME COLUMN year_salary TO yearly_salary;