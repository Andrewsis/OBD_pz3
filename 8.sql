SELECT e.first_name || ' ' || e.last_name AS full_name,
    j.job_title,
    e.salary,
    j.max_salary
FROM HR.Employees e
JOIN HR.jobs j ON e.salary = j.max_salary
ORDER BY j.job_title
