-------------------- INSERT DATA --------------------
-- MySQL: is_hiring can receive TRUE/FALSE or 0/1 for boolean values.
INSERT INTO employers (company_name, company_address, yearly_salary, is_hiring) VALUES
('Tech Innovations', '123 Tech Lane, Silicon Valley', 120.00, 1),
('Green Solutions', '456 Eco St, Green City', 90.00, 0),
('HealthCare Corp', '789 Wellness Blvd, Health Town', 110.00, 1),
('EduTech Ltd.', '101 Learning Ave, Knowledge City', 95.00, 1),
('Finance Experts', '202 Money St, Finance District', 130.00, 0),
('Travel Ventures', '303 Adventure Rd, Travel Land', 85.00, 1),
('Global Enterprises', '404 Business Park, Global City', 140.00, 1),
('Creative Minds', '505 Art St, Creative Town', 80.00, 1);

-- Postgres: is_hiring can receive TRUE/FALSE for boolean values.
-- INSERT INTO employers (company_name, company_address, yearly_salary, is_hiring) VALUES
-- ('Tech Innovations', '123 Tech Lane, Silicon Valley', 120.00, TRUE),
-- ('Green Solutions', '456 Eco St, Green City', 90.00, FALSE),
-- ('HealthCare Corp', '789 Wellness Blvd, Health Town', 110.00, TRUE),
-- ('EduTech Ltd.', '101 Learning Ave, Knowledge City', 95.00, TRUE),
-- ('Finance Experts', '202 Money St, Finance District', 130.00, FALSE),
-- ('Travel Ventures', '303 Adventure Rd, Travel Land', 85.00, TRUE),
-- ('Global Enterprises', '404 Business Park, Global City', 140.00, TRUE),
-- ('Creative Minds', '505 Art St, Creative Town', 80.00, TRUE);



-------------------- INSERT DATA --------------------
INSERT INTO conversations (user_name, employer_name, message, date_sent) VALUES
('Alice Smith', 'Tech Innovations', 'I am very interested in the software engineer position.', '2023-10-01 10:00:00'),
('Bob Johnson', 'Green Solutions', 'I would like to apply for the project manager role.', '2023-10-02 11:30:00'),
('Charlie Brown', 'HealthCare Corp', 'Can you provide more details about the data analyst position?', '2023-10-03 14:15:00'),
('Diana Prince', 'EduTech Ltd.', 'I am excited about the teaching opportunity.', '2023-10-04 09:45:00'),
('Ethan Hunt', 'Finance Experts', 'I have experience in financial analysis and would love to join your team.', '2023-10-05 16:20:00'),
('Fiona Apple', 'Travel Ventures', 'I am passionate about travel and would like to apply for the marketing role.', '2023-10-06 12:30:00'),
('George Lucas', 'Global Enterprises', 'I am interested in the business development position.', '2023-10-07 08:00:00'),
('Hannah Montana', 'Creative Minds', 'I have a background in graphic design and would love to work with you.', '2023-10-08 15:45:00');