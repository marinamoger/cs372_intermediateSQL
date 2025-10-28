-- Write your query to select data here
SELECT e.first_name, e.last_name, p.title
FROM employee e
JOIN works_on w ON w.eid = e.id
JOIN project  p ON p.id = w.pid
ORDER BY e.first_name ASC, e.last_name ASC, p.title ASC;
