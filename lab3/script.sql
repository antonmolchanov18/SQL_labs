SELECT name
FROM cities
WHERE name LIKE '%ськ';

SELECT name
FROM cities
WHERE name LIKE '%донец%';

SELECT CONCAT(name, ' (', region, ')') , population
FROM cities
WHERE population > 100000
ORDER BY name ASC;

SELECT name, population / 40000000 * 100 AS percent
FROM cities
ORDER BY population DESC
LIMIT 50;


SELECT 
CONCAT(name, ' - ', (population/(SELECT SUM(population )  
FROM cities))*100, '%')
AS city_population_percentage
FROM cities
WHERE population >= (SELECT SUM(population)*0.001 FROM cities)
ORDER BY population DESC;