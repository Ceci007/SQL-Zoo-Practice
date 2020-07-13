-- Tutorial 3 - Nobel Quiz 
-- https://sqlzoo.net/wiki/Nobel_Quiz

-- 3.1
SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n';

-- 3.2
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960;

-- 3.3
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine');

-- 3.4
-- (subject: Medicine, Medicine | winner: Sir John Eccles, Sir Frank Macfarlane Burnet)

-- 3.5
SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'));

-- 3.6 
SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace');

-- 3.7
-- (subject: Chemistry, Literature, Medicine, Peace, Physics | COUNT(subject): 1, 1, 2, 1, 1)