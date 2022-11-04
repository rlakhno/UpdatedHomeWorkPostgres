SELECT project_id AS "Project Name", extract(year from age(finish_date, start_date)) * 12 +
extract(month from age(finish_date, start_date)) AS "Longest Project In Month"
FROM  project 
WHERE (extract(year from age(finish_date, start_date)) * 12 +
extract(month from age(finish_date, start_date))) =
	(
	SELECT  MAX(duration)
	FROM
		(
		SELECT project_id,(extract(year from age(finish_date, start_date)) * 12 +
extract(month from age(finish_date, start_date)))  duration 
		FROM project
		ORDER BY duration DESC
		) AS a
	)
GROUP BY project_id