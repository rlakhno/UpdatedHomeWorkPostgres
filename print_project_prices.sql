SELECT p.project_id, SUM(w.salary)*(extract(year from age(finish_date, start_date)) * 12 +
extract(month from age(finish_date, start_date))) AS "PRICE"
FROM project p
INNER JOIN project_worker pw
ON p.project_id = pw.project_id
INNER JOIN worker w
ON pw.worker_id = w.worker_id
GROUP BY p.project_id
ORDER BY "PRICE" DESC;