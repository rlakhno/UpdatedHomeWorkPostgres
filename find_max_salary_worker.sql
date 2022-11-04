SELECT name as "NAME", salary as "Max Salary"
FROM worker
WHERE salary= (SELECT MAX(salary) FROM worker)