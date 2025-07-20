-- 📘 SQL Day 1 – SELECT, WHERE, AND, OR, ORDER BY, BETWEEN

-- 1. Select all employees in New York
SELECT first_name, last_name 
FROM employees 
WHERE city = 'New York';

-- 2. Select employees from HR department
SELECT first_name, last_name, salary 
FROM employees 
WHERE department = 'HR';

-- 3. Employees in HR OR New York AND salary > 50000
SELECT first_name, department, salary
FROM employees 
WHERE (department = 'HR' OR city = 'New York') 
  AND salary > 50000;

-- 4. Employees with salary between 50000 and 60000, sorted
SELECT * 
FROM employees 
WHERE salary BETWEEN 50000 AND 60000 
ORDER BY salary ASC;

-- 5. Employees in Texas or Florida
SELECT first_name, last_name, state 
FROM employees 
WHERE state = 'TX' OR state = 'FL'
ORDER BY last_name;

-- 6. Employees in San Diego with salary > 50000
SELECT * 
FROM employees 
WHERE city = 'San Diego' 
  AND salary > 50000;
