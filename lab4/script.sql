SELECT UCASE (name)
FROM cities
LIMIT 5 OFFSET 5;

SELECT name, LENGTH(name)
FROM cities
WHERE LENGTH(name) NOT IN (8, 9, 10);

SELECT region, SUM(population) AS total_population
FROM cities
WHERE region IN ('C', 'S')
GROUP BY (region);

SELECT AVG(population) AS avg_population
FROM cities
WHERE region = 'W';

SELECT region, COUNT(region) AS count_city
FROM cities
WHERE region = 'E';