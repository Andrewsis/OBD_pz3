SELECT l.street_address,
	COUNT(d.department_id) AS department_count,
	SUM(e.employee_count) AS employee_count
FROM HR.Locations l
LEFT JOIN HR.Departments d 
    ON l.location_id = d.location_id
LEFT JOIN (
SELECT COUNT(employee_id) AS employee_count,
	department_id
FROM HR.Employees
GROUP BY department_id
) e ON d.department_id = e.department_id
GROUP BY l.street_address 
