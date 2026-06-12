-- Last Part
-- Thanks GOD
-- Many to Many Relation

-- Let's create 2 tables
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
);
CREATE TABLE IF NOT EXISTS notes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    note VARCHAR(255),
);

-- Create the relation and ownership
CREATE TABLE ownership (
    item_owner INT REFERENCES users(id),
    item INT REFERENCES nites(id),
    PRIMARY KEY (item_owner, item )
);

-- Insert a litte data
INSERT INTO ownership (item_owner, item) VALUES (1, 1), (1, 2), (2, 3), (3, 4);

-- Time for a JOIN
SELECT u.first_name, u.lastname, n.title, n.note
FROM ownership
JOIN users u ON u.id = ownership.item_owner
JOIN notes n ON n.id = ownership.item;
