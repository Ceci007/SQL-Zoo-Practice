-- Tutorial 8 - Using Null Quiz
-- https://sqlzoo.net/wiki/Using_Null_Quiz

-- 8.1
SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id);

-- 8.2 
SELECT dept.name FROM teacher JOIN dept ON (dept.id = teacher.dept) WHERE teacher.name = 'Cutflower';

-- 8.3
SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name;

-- 8.4
-- display 0 in result column for all teachers without department

-- 8.5
-- 'four' for Throd

-- 8.6
-- Table-A