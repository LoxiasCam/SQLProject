/*SELECT Basics*/
SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

/*SELECT from WORLD*/
SELECT name, continent, population FROM world

SELECT name
  FROM world
 WHERE population > 200000000

 SELECT name, gdp/population
  FROM world
 WHERE population > 200000000

SELECT name, population/1000000
  FROM world
 WHERE continent LIKE 'South America'

SELECT name, population FROM world
  WHERE name IN ('France', 'Germany', 'Italy');

SELECT name FROM world
  WHERE name LIKE 'United%';

SELECT name, population, area FROM world
  WHERE area > 3000000 OR population > 250000000

SELECT name, population, area FROM world
  WHERE (area > 3000000 OR population > 250000000) AND NOT 
      (area > 3000000 AND population > 250000000)

SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
  FROM world
 WHERE continent LIKE 'South America'

SELECT name, ROUND(gdp/population, -3) FROM world
 WHERE gdp >= 1000000000000

SELECT name, capital FROM world
 WHERE LEN(name) = LEN(capital)

SELECT name, capital FROM world
 WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital

SELECT name FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' 
      AND name LIKE '%i%' AND name LIKE '%o%'  
      AND name LIKE '%u%' AND name NOT LIKE '% %'

/*SELECT from NOBEL*/
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'

SELECT winner
  FROM nobel
 WHERE yr >= 2000 AND subject = 'Peace'

SELECT yr, subject, winner
  FROM nobel
 WHERE yr BETWEEN 1980 AND 1989 AND subject = 'Literature'

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')

SELECT winner FROM nobel
 WHERE winner LIKE 'John%'

SELECT yr, subject, winner
  FROM nobel
 WHERE subject = 'Physics' AND yr = 1980 OR subject = 'Chemistry' AND yr = 1984

SELECT yr, subject, winner
  FROM nobel
 WHERE subject NOT IN ('Chemistry', 'Medicine') AND yr = 1980

SELECT yr, subject, winner
  FROM nobel
 WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004

SELECT *
  FROM nobel
 WHERE winner LIKE 'PETER GRÜNBERG'

SELECT *
  FROM nobel
 WHERE winner LIKE 'EUGENE O''NEILL'

SELECT winner, yr, subject
  FROM nobel
 WHERE winner LIKE 'sir%'
 ORDER BY yr DESC, winner

SELECT winner, subject, subject IN ('Physics','Chemistry')
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject,winner

/*SELECT within SELECT  */
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

