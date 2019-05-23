--Q1
SELECT
	trips.trip_id,
	trips.duration
FROM
	trips
JOIN
	weather
ON
	trips.zip_code = weather.zip
WHERE
	weather.precipitationin > 0
GROUP BY 
	1, 2
ORDER BY 
	trips.duration DESC
LIMIT 3;

--Q2
SELECT
	status.station_id,
	stations.name,
	COUNT(CASE WHEN docks_available=0 then 1 END) as empty_count
FROM 
	status
JOIN 
	stations
ON 
	stations.station_id = status.station_id
GROUP BY 
	1,2
ORDER BY 
	empty_count DESC;

--Q3
SELECT
	start_station,
	dockcount,
	COUNT(*)
FROM 
	trips
JOIN 
	stations
ON 
	stations.name=trips.start_station
GROUP BY 
	1, 2
ORDER BY 
	dockcount DESC