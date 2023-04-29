SELECT name, population 
FROM cities
WHERE population >= 1000000;

SELECT name, region, population 
FROM cities
WHERE region IN ('E', 'W')
ORDER BY population DESC;

SELECT name, region, population 
FROM cities
WHERE population > 50000 AND region IN ('S', 'C', 'N');

SELECT name, region, population
FROM cities
WHERE population < 350000 AND population > 150000 AND region IN ('E','W','N')
ORDER BY name
LIMIT 20;

SELECT name, region, population
FROM cities
WHERE NOT region IN ('E', 'W', 'N')
ORDER BY population
LIMIT 10 OFFSET 10;