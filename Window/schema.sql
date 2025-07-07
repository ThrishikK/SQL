DROP DATABASE employees;
CREATE DATABASE employees;
USE employees;

CREATE TABLE employee_salaries (
  id INT PRIMARY KEY,
  employee_name VARCHAR(100),
  department VARCHAR(50),
  joining_date DATE,
  salary INT,
  bonus INT,
  city VARCHAR(50)
);
