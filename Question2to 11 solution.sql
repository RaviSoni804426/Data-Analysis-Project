create database pw;
use pw;
CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT,
hire_date DATE
);
INSERT INTO employees (name, department, salary, hire_date) VALUES
('Alice', 'Sales', 60000, '2019-06-15'),
('Bob', 'HR', 45000, '2021-03-12'),
('Charlie', 'Engineering', 72000, '2018-01-10'),
('David', 'Marketing', 50000, '2020-07-20'),
('Eve', 'Sales', 55000, '2018-09-30'),
('Frank', 'HR', 35000, '2020-02-25'),
('Grace', 'Design', 65000, '2017-11-05'),
('Hank', 'Engineering', 68000, '2020-08-22'),
('Ivy', 'Design', 70000, '2021-05-18'),
('Jack', 'Finance', 80000, '2016-12-01'),
('Kate', 'Sales', 50000, '2019-10-10'),
('Leo', 'IT', 75000, '2019-01-15'),
('Mia', 'Sales', 62000, '2022-01-01'),
('Nina', 'HR', 40000, '2023-06-10'),
('Oscar', 'Marketing', 58000, '2021-07-15'),
('Paul', 'Engineering', 90000, '2017-03-18'),
('Quinn', 'Design', 75000, '2019-04-25'),
('Rita', 'IT', 60000, '2021-10-20'),
('Sam', 'HR', 62000, '2022-11-30'),
('Tina', 'Finance', 42000, '2018-08-18');
select * from employees;
SELECT * FROM employees
WHERE (department = 'Sales' AND salary > 50000)
   OR (department = 'HR' AND hire_date > '2020-01-01');

SELECT name, salary
FROM employees
WHERE salary > 50000
AND (department = 'Sales' OR department = 'HR')
ORDER BY department DESC, salary ASC;

SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 60000
  AND department <> 'Marketing'
ORDER BY hire_date DESC, salary ASC;

SELECT * FROM employees WHERE department <> 'Finance' OR salary < 30000 ORDER BY department ASC, name DESC;

SELECT * FROM employees WHERE name LIKE 'A%' AND hire_date > '2015-01-01' ORDER BY name ASC;

SELECT * FROM employees WHERE (department = 'Engineering' AND salary < 70000) OR (department = 'Design' AND salary > 60000) ORDER BY salary DESC;


SELECT name, salary, hire_date
FROM employees;

SELECT * FROM project
WHERE start_date < '2022-01-01'
   OR end_date > '2022-12-31'
ORDER BY project_name DESC;

SELECT *
FROM employees
WHERE name LIKE '%son'
  AND department <> 'IT'
ORDER BY salary DESC, hire_date ASC;

SELECT * FROM employees
WHERE YEAR(hire_date) = 2021
  AND salary > (SELECT AVG(salary) FROM employees)
ORDER BY name ASC;


