create database this;
use this;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    manager_id INT,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, manager_id, full_name, department, salary)
VALUES 
    (1, NULL, 'Raj Kumar', 'Executive', 100000),
    (2, 1, 'Manmohan Sharma', 'HR', 80000),
    (3, 1, 'Anik Shaikh', 'Finance', 100000),
    (4, 2, 'Dev Gupta', 'HR', 70000),
    (5, 3, 'Vikram Singh', 'Finance', 65000);

SELECT 
    e.employee_id,
    e.full_name,
    e.department,
    e.salary,
    m.full_name AS manager_name,
    (SELECT AVG(salary) FROM employees WHERE department = e.department) AS dept_avg_salary,
    CASE 
        WHEN e.salary > (SELECT AVG(salary) FROM employees WHERE department = e.department)
        THEN 'Above Average'
        ELSE 'Below Average'
    END AS salary_status
FROM 
    employees e
LEFT JOIN 
    employees m ON e.manager_id = m.employee_id
ORDER BY 
    e.department, e.salary DESC;
