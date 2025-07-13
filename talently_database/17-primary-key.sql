DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-------------------- CREATE TABLE --------------------
-- MySQL
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL
);

-- Postgres
CREATE TYPE employment_status AS ENUM ('employed', 'self-employed', 'unemployed');
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status employment_status NOT NULL
);

-- SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    yearly_salary INTEGER CHECK (yearly_salary > 0),
    current_status TEXT CHECK (current_status IN ('employed', 'self-employed', 'unemployed')) NOT NULL
);

-------------------- CREATE TABLE --------------------
-- MySQL
CREATE TABLE employers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

-- Postgres
CREATE TABLE employers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

-- SQLite
CREATE TABLE employers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT NOT NULL,
    company_address TEXT NOT NULL,
    yearly_revenue REAL CHECK (yearly_revenue > 0),
    is_hiring INTEGER DEFAULT 0
);

---------------------- CREATE TABLE --------------------
-- MySQL
CREATE TABLE conversations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Postgres
CREATE TABLE conversations (
    id SERIAL PRIMARY KEY,
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- SQLite
CREATE TABLE conversations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    employer_id INTEGER,
    message TEXT NOT NULL,
    date_sent TEXT DEFAULT (datetime('now', 'localtime'))
);

-------------------- INSERT DATA --------------------
-- MySQL/Postgres/SQLite
INSERT INTO users (yearly_salary, full_name, current_status) VALUES
(50000, 'Alice Smith', 'employed'),
(60000, 'Bob Johnson', 'self-employed'),
(0, 'Charlie Brown', 'unemployed'),
(70000, 'Diana Prince', 'employed'),
(80000, 'Ethan Hunt', 'self-employed'),
(0, 'Fiona Apple', 'unemployed'),
(90000, 'George Lucas', 'employed'),
(100000, 'Hannah Montana', 'self-employed');

-------------------- INSERT DATA --------------------
-- MySQL/SQLite
INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) VALUES
('Tech Innovations', '123 Tech Lane, Silicon Valley', 120.00, 1),
('Green Solutions', '456 Eco St, Green City', 90.00, 0),
('HealthCare Corp', '789 Wellness Blvd, Health Town', 110.00, 1),
('EduTech Ltd.', '101 Learning Ave, Knowledge City', 95.00, 1),
('Finance Experts', '202 Money St, Finance District', 130.00, 0),
('Travel Ventures', '303 Adventure Rd, Travel Land', 85.00, 1),
('Global Enterprises', '404 Business Park, Global City', 140.00, 1),
('Creative Minds', '505 Art St, Creative Town', 80.00, 1);

-- MySQL/Postgres
INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) VALUES
('Tech Innovations', '123 Tech Lane, Silicon Valley', 120.00, TRUE),
('Green Solutions', '456 Eco St, Green City', 90.00, FALSE),
('HealthCare Corp', '789 Wellness Blvd, Health Town', 110.00, TRUE),
('EduTech Ltd.', '101 Learning Ave, Knowledge City', 95.00, TRUE),
('Finance Experts', '202 Money St, Finance District', 130.00, FALSE),
('Travel Ventures', '303 Adventure Rd, Travel Land', 85.00, TRUE),
('Global Enterprises', '404 Business Park, Global City', 140.00, TRUE),
('Creative Minds', '505 Art St, Creative Town', 80.00, TRUE);

-------------------- INSERT DATA --------------------
-- MySQL/Postgres/SQLite
INSERT INTO conversations (user_id, employer_id, message, date_sent) VALUES
('Alice Smith', 'Tech Innovations', 'I am very interested in the software engineer position.', '2023-10-01 10:00:00'),
('Bob Johnson', 'Green Solutions', 'I would like to apply for the project manager role.', '2023-10-02 11:30:00'),
('Charlie Brown', 'HealthCare Corp', 'Can you provide more details about the data analyst position?', '2023-10-03 14:15:00'),
('Diana Prince', 'EduTech Ltd.', 'I am excited about the teaching opportunity.', '2023-10-04 09:45:00'),
('Ethan Hunt', 'Finance Experts', 'I have experience in financial analysis and would love to join your team.', '2023-10-05 16:20:00'),
('Fiona Apple', 'Travel Ventures', 'I am passionate about travel and would like to apply for the marketing role.', '2023-10-06 12:30:00'),
('George Lucas', 'Global Enterprises', 'I am interested in the business development position.', '2023-10-07 08:00:00'),
('Hannah Montana', 'Creative Minds', 'I have a background in graphic design and would love to work with you.', '2023-10-08 15:45:00');