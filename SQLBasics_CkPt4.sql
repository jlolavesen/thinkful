--Q1
SELECT
    trip_id,
    duration
FROM
    trips
WHERE 
    duration > 500
ORDER BY duration DESC

--Q2
SELECT
    *
FROM
    stations
WHERE 
    station_id = 84
	
--Q3
SELECT
    mintemperaturef
FROM
    weather
WHERE 
	zip = 94301 AND
	precipitationin > 0