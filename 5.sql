WITH EmployeeData AS (
    SELECT employee_id, first_name, last_name, job_id, phone_number, department_id
    FROM HR.Employees
    WHERE employee_id = 100
)
SELECT 'ПІБ' AS "Поле", 
       first_name || ' ' || last_name AS "Значення"
FROM EmployeeData
UNION ALL
SELECT 'Посада' AS "Поле", 
       job_id AS "Значення"
FROM EmployeeData
UNION ALL
SELECT 'Номер телефону' AS "Поле", 
       phone_number AS "Значення"
FROM EmployeeData
UNION ALL
SELECT 'Відділ' AS "Поле", 
       (SELECT department_name FROM HR.Departments d 
        WHERE d.department_id = EmployeeData.department_id) AS "Значення"
FROM EmployeeData;
