-- Tutorial 5 - SUM and COUNT Quiz
-- https://sqlzoo.net/wiki/SUM_and_COUNT_Quiz

-- 5.1
SELECT SUM(population) FROM bbc WHERE region = 'Europe';

-- 5.2
SELECT COUNT(name) FROM bbc WHERE population < 150000;

-- 5.3
-- AVG(), COUNT(), MAX(), MIN(), SUM()

-- 5.4
-- No result due to invalid use of the WHERE function

-- 5.5
SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark');

-- 5.6
SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region;

-- 5.7
SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc);

-- 5.8
-- Table-D