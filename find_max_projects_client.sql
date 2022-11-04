SELECT c.client_name, COUNT(p.client_id)
FROM project p
INNER JOIN client c
ON p.client_id = c.client_id
GROUP BY c.client_name
HAVING COUNT(p.client_id)=
(
SELECT MAX(mycount)
FROM
(SELECT client_id, COUNT(client_id) mycount
FROM project	
GROUP BY client_id
) AS alias
)
