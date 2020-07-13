-- Tutorial 2 - BBC QUIZ 
-- https://sqlzoo.net/wiki/BBC_QUIZ

-- 2.1
SELECT name
  FROM world
 WHERE name LIKE 'U%';

-- 2.2
SELECT population
  FROM world
 WHERE name = 'United Kingdom';

-- 2.3
-- 'name' should be name

-- 2.4
-- (name: Nauru | population: 990)

-- 2.5
SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia');

-- 2.6
 SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo');

-- 2.7
-- (name: Brazil, Colombia)
