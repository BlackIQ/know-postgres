-- At 01-table we learned how to create a table
-- Here we are using a condition to check and create it
-- For example you may have a table name is products
-- If you run creating another table with the same name you get an error
-- But let's stop this from begining

CREATE TABLE IF NOT EXISTS people ( -- Just like this. if not exists
    id INT PRIMARY KEY, -- Ref: 01-table
    first_name VARCHAR(255), -- Ref: 01-table
    last_name VARCHAR(255), -- Ref: 01-table
    age INT, -- Ref: 01-table
    job VARCHAR(255), -- Ref: 01-table
    employed BOOL -- Ref: 01-table
);

-- All done. See you at 03-select