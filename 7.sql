SELECT
	e.first_name || ' ' || e.last_name AS full_name,
	d.department_name,
	c.country_name
FROM HR.Employees e
JOIN HR.Departments d 
    ON e.department_id = d.department_id
JOIN HR.LOCATIONS l 
    ON d.location_id = l.location_id
JOIN HR.COUNTRIES c 
    ON l.country_id = c.country_id
WHERE e.department_id = 30
ORDER BY full_name
