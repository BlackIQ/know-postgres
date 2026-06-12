-- Here is how to create a table in PostgreSQL
-- Same as MySQL, Mariadb and other SQL kind databases

CREATE TABLE people (
    id INT PRIMARY KEY, -- A primary key that is always unique
    first_name VARCHAR(255), -- Variable is that character
    last_name VARCHAR(255), -- Variable is that character
    age INT, -- This is Integer
    job VARCHAR(255), -- For more information checkout first_name and last_name
    employed BOOL -- This column always is True or False. 1/0
);

-- Done. We just created a table.