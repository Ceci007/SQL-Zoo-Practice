-- Tutorial 1 - SELECT Quiz
-- https://sqlzoo.net/wiki/SELECT_Quiz

-- 1.1 
SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000;

-- 1.2
-- Table-E

-- 1.3 
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l';

-- 1.4
-- (name: Italy, Malta, Spain | length(name): 5, 5, 5)

-- 1.5 
-- (name: Andorra | area: 936)

-- 1.6 
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000;

-- 1.7
SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia');
