-- 1
SELECT
   column_name,
   data_type
FROM
   information_schema.COLUMNS
WHERE
   TABLE_NAME = 'naep';

--2
SELECT
	*
FROM
	naep
LIMIT 
	50;

--3
SELECT
	state,
	AVG(avg_math_4_score),
	MIN(avg_math_4_score),
	MAX(avg_math_4_score),
	COUNT(*)
FROM
	naep
GROUP BY 
	1
ORDER BY
	state;

--4
SELECT
	state,
	AVG(avg_math_4_score),
	MIN(avg_math_4_score),
	MAX(avg_math_4_score),
	COUNT(*)
FROM
	naep
GROUP BY 
	1
HAVING
	MAX(avg_math_4_score) - MIN(avg_math_4_score) > 30
ORDER BY
	state;
	
--5
SELECT
	state as bottom_10_states,
	avg_math_4_score
FROM
	naep
WHERE
	year = 2000
ORDER BY
	avg_math_4_score ASC
LIMIT
	10;

--6
SELECT
	year,
	ROUND(AVG(avg_math_4_score), 2)
FROM
	naep
WHERE
	year = 2000
GROUP BY
	1;
	
--7
SELECT
	state as below_average_states_y2000
FROM
	naep
WHERE
	year = 2000 AND
	avg_math_4_score < 224.80;
	
--8
SELECT
	state as scores_missing_y2000
FROM
	naep
WHERE
	year = 2000 AND
	avg_math_4_score IS NULL;

--9
SELECT
	naep.state,
	ROUND(naep.avg_math_4_score,2),
	finance.total_expenditure
FROM
	naep
LEFT OUTER JOIN
	finance
ON
	naep.id = finance.id
WHERE
	naep.year = 2000 AND
	naep.avg_math_4_score IS NOT NULL
ORDER BY
	finance.total_expenditure ASC;
	


