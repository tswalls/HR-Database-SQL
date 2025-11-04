CREATE DATABASE hr_database;
USE hr_database;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    performance_score INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering');

INSERT INTO employees VALUES
(101, 'Alice', 1, 62000, 85),
(102, 'Bob', 2, 70000, 88),
(103, 'Cindy', 3, 95000, 92),
(104, 'David', 3, 87000, 80),
(105, 'Emma', 2, 72000, 95);
