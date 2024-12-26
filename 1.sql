SELECT d.department_name,
    COUNT(e.employee_id) AS quantity_workers
FROM HR.Employees e

RIGHT JOIN HR.Departments d 
    ON e.department_id = d.department_id 
GROUP BY e.department_id, d.department_name 
HAVING COUNT(e.employee_id) = 0;
