-- Tutorial 6 - JOIN Quiz
-- https://sqlzoo.net/wiki/JOIN_Quiz

-- 6.1 
-- game  JOIN goal ON (id=matchid)

-- 6.2
-- matchid, teamid, player, gtime, id, teamname, coach

-- 6.3
SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = "GRE" OR team2 = "GRE")
   AND teamid != 'GRE'
 GROUP BY player, teamid;

-- 6.4
-- (teamid: DEN, GER | mdate: 9 June 2012, 9 June 2012)

-- 6.5
 SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'POL' OR team2 = 'POL')
   AND teamid != 'POL';

-- 6.6 
SELECT DISTINCT player, teamid, gtime
  FROM game JOIN goal ON matchid = id
 WHERE stadium = 'Stadion Miejski (Wroclaw)'
   AND (( teamid = team2 AND team1 != 'ITA') OR ( teamid = team1 AND team2 != 'ITA'));

-- 6.7
-- (teamname: Netherlands, Poland, Republic of Ireland, Ukraine | COUNT(*): 2, 2, 1, 2)