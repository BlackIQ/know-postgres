DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
	id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	username VARCHAR(255) NOT NULL UNIQUE,
	age INT,
	category VARCHAR(255)
);

TRUNCATE users;

SELECT * FROM users;

INSERT INTO users
(first_name, last_name, username, age, category)
VALUES
('Amirhossein', 'Mohammadi', 'ah.mohammadi', 24, 'Database'),
('Amirali', 'Mohammadi', 'aa.mohammadi', 12, 'Software'),
('Arash', 'Shiri', 'a.shiri', 24, 'Network'),
('Reza', 'Gholami', 'r.gholami', 30, 'Security'),
('Ebrahim', 'Pabarja', 'e.pabarja', 27, 'DevOps');

SELECT
AVG(age) as age_avg,
MIN(age) as age_min,
MAX(age) as age_max,
COUNT(*) as total
FROM users;

SELECT id, first_name, last_name, age FROM users where age < 25;
SELECT id, first_name, last_name, age FROM users where age > 25;
SELECT first_name, last_name FROM users WHERE category = 'Design';
SELECT id, last_name FROM users WHERE category in ('Sales', 'Network');
SELECT id, first_name FROM users WHERE age BETWEEN 23 AND 27;
SELECT id, category FROM users WHERE category = 'Design' or category = 'Network';

INSERT INTO users
(first_name, last_name, username, age, category)
VALUES
('Mark', 'Jobs', 'm.jobs', 40, 'Datacenter'),
('Steve', 'Nolan', 's.nolan', 38, 'Datacenter'),
('Albert', 'Smith', 'a.smith', 35, 'Office');

SELECT DISTINCT(category) AS category FROM users;

UPDATE users SET category = 'DC' WHERE category = 'Datacenter';
DELETE FROM users WHERE category = 'Office';

SELECT * FROM users ORDER BY age ASC;
SELECT * FROM users ORDER BY age DESC;
SELECT * FROM users ORDER BY age DESC LIMIT 2;

ALTER TABLE users ADD COLUMN IF NOT EXISTS salary INT;
SELECT * FROM users;
ALTER TABLE users DROP COLUMN IF EXISTS salary;
SELECT * FROM users;