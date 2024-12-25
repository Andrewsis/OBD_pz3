SELECT e.employee_id, 
    d.department_name, 
    e.manager_id, 
    dm.department_name
FROM HR.Employees e
JOIN HR.Employees m 
    ON m.employee_id = e.manager_id
JOIN HR.Departments d 
    ON e.department_id = d.department_id
JOIN HR.Departments dm 
    ON m.department_id = dm.department_id
WHERE m.department_id != e.department_id
