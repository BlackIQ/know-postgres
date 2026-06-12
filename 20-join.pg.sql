-- Let's combine using where using join
-- using my ex girlfriend ass to combine
-- every fucking single thing in a table
-- I hate JOIN. But I get payed to write JOIN

-- We have a lot of JOINs:
-- INNER
-- LEFT
-- RIGHT
-- FULL


-- A very simple JOIN (Simple but even Hard)
SELECT * FROM people JOIN things on people.id = things.owner_id;

-- Add a where
SELECT * FROM people JOIN things on people.id = things.owner_id WHERE people.job = "Management";

-- Using INNER
SELECT * FROM people INNER JOIN things on people.id = things.owner_id;

-- Using RIGHT:
-- Starting from Left table, show everything even not related to right one
SELECT * FROM people LEFT JOIN things on people.id = things.owner_id;

-- Using RIGHT:
-- Starting from Right table, show everything even not related to left one
SELECT * FROM people RIGHT JOIN things on people.id = things.owner_id;

-- Using FULL:
-- Literally you get a big bad ass data
SELECT * FROM people FULL JOIN things on people.id = things.owner_id;