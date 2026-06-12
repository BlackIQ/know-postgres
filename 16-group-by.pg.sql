-- Aggrigation or GROUP BY
-- From now on, read Qoran alongside writing SQL

-- Well, let's consider something. I want you to tell me:


-- Count of people working in differant departments
-- Result Ex: Sales 10, Network: 23

SELECT job, COUNT(*) FROM people GROUP BY job;

-- Average of age working in differant departments
-- Result Ex: Sales 30, Network: 35

SELECT job, AVG(age) FROM people GROUP BY job;

-- We also have other things!
SELECT job, MIN(age) FROM people GROUP BY job;
SELECT job, MAX(age) FROM people GROUP BY job;

-- Also you can use multi things
SELECT job, MIN(age), MAX(age), AVG(age), COUNT(*) FROM people GROUP BY job;

-- See you at 17