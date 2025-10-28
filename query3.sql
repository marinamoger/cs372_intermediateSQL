-- Write your query to select data here
SELECT e.first_name, e.last_name, p.title AS project_title
FROM employee AS e
JOIN works_on AS w ON w.eid = e.id
JOIN project  AS p ON p.id = w.pid
ORDER BY e.first_name ASC, e.last_name ASC, p.title ASC;