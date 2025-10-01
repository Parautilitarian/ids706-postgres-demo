SELECT name, cuisine, avg_cost
FROM restaurants
ORDER BY avg_cost ASC
LIMIT 5;

-- This query retrieves the names, cuisines, and average costs of the five least expensive restaurants from the 'restaurants' table. The results are ordered by average cost in ascending order.

SELECT
    name,
    distance_miles
FROM
    restaurants
WHERE
    distance_miles <= 2.0
ORDER BY
    distance_miles;

-- This query retrieves the names and distances (in miles) of restaurants that are within 2 miles from a certain point. The results are ordered by distance in ascending order.

SELECT name FROM restaurants
ORDER BY rating DESC
LIMIT 5;

-- This query retrieves the names of the top five highest-rated restaurants from the 'restaurants' table. The results are ordered by rating in descending order.


SELECT name, avg_cost,
ROUND((avg_cost * 1.075), 2) AS cost_with_tax
FROM restaurants;

-- This query retrieves the names and average costs of restaurants, along with the average cost including a 7.5% tax, rounded to two decimal places. The results are taken from the 'restaurants' table.


SELECT cuisine, COUNT(1) AS restaurant_count
FROM restaurants
GROUP BY cuisine
ORDER BY restaurant_count DESC;

-- This query counts the number of restaurants for each cuisine type in the 'restaurants' table. The results are grouped by cuisine and ordered by the count of restaurants in descending order.
