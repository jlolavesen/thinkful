SELECT
	id,
	name,
	neighbourhood,
	room_type,
	MAX(price)
FROM
	sfo_listings
GROUP BY
	1, 2, 3, 4
ORDER BY
	MAX(price) DESC
LIMIT
	2;
	
SELECT
	neighbourhood,
	COUNT(*)
FROM
	sfo_listings
GROUP BY
	1
ORDER BY
	COUNT DESC;
	
WITH
	listings
AS
	(
	SELECT
		id,
		price
	FROM
		sfo_listings
	GROUP BY
		1,2
	)
	
SELECT
	sfo_calendar.calender_date,
	listings.price
FROM
	sfo_calendar
JOIN
	listings
ON
	sfo_calendar.listing_id = listings.id
GROUP BY
	1, 2
ORDER BY
	listings.price ASC,
	sfo_calendar.calender_date ASC