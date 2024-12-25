SELECT d.department_name, COUNT(*) AS commission FROM HR.Employees e
JOIN HR.Departments d ON 
    e.department_id = d.department_id
WHERE commission_pct is not null
GROUP BY d.department_name
 
