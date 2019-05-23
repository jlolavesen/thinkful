--Q1
SELECT
    zip,
    MAX(maxtemperaturef)    
FROM
    weather
GROUP by 1
ORDER BY MAX(maxtemperaturef) DESC
LIMIT 1

--Q2
SELECT
    start_station,
	COUNT (*)
FROM
    trips
GROUP by 1

--Q3
SELECT
	trip_id,
	MIN (duration)
FROM
    trips
GROUP BY
	1
ORDER BY MIN (duration) ASC
LIMIT 1

--Q4
SELECT
	end_station,
	AVG (duration)
FROM
    trips
GROUP BY
	1