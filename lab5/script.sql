SELECT region, SUM(population)
FROM cities
GROUP BY region;

SELECT region, COUNT(region) AS count_cities
FROM cities
GROUP BY region
HAVING count_cities >= 10;
 
SELECT * 
FROM regions;

SELECT name, population, region
FROM cities
WHERE region IN (SELECT uuid FROM regions WHERE area_quantity >= 5)
ORDER BY population DESC
LIMIT 5 OFFSET 10;

SELECT region, SUM(population) AS sum_population
FROM cities
WHERE population > 300000
GROUP BY region; 

SELECT name, region, population
FROM cities
WHERE region IN (SELECT uuid FROM regions WHERE area_quantity <= 5) AND population >= 150000 OR population <= 500000;