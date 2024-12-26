SELECT department_name, 
    LENGTH(department_name) as len,
    department_id
FROM HR.Departments

WHERE LENGTH(department_name) IN (
    (
    SELECT MIN(LENGTH(department_name))
    FROM HR.Departments
    ),
    (
    SELECT MAX(LENGTH(department_name))
    FROM HR.Departments
    )
)
