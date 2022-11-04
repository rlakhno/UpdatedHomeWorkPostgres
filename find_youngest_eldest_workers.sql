SELECT  name AS "NAME", birthday AS "BRTHDAY"
FROM worker
WHERE birthday= (SELECT MAX(birthday) FROM worker)
UNION
SELECT name AS "NAME", birthday AS "BRTHDAY"
FROM worker
WHERE birthday = (SELECT MIN(birthday) FROM worker);