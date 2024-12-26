SELECT ROUND(AVG(salary)), department_name
FROM HR.Employees e
JOIN HR.Departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(salary) IN (
    (
    SELECT MAX(AVG(SALARY))
    FROM HR.Employees
    GROUP BY department_id
    ),
    (
    SELECT MIN(AVG(SALARY))
    FROM HR.Employees
    GROUP BY department_id
    )
)
