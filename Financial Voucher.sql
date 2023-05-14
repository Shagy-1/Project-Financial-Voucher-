-- Create the database
CREATE DATABASE IF NOT EXISTS university;
USE university;

-- Create the "Student" table
CREATE TABLE IF NOT EXISTS Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    date_of_birth DATE,
    email VARCHAR(100),
    program_id INT,
    FOREIGN KEY (program_id) REFERENCES Program(program_id)
);

-- Create the "Employees" table
CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    position VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Create the "Financing Voucher" table
CREATE TABLE IF NOT EXISTS `Financing Voucher` (
    voucher_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

-- Create the "Program" table
CREATE TABLE IF NOT EXISTS Program (
    program_id INT PRIMARY KEY,
    program_name VARCHAR(100)
);

-- Create the "Department" table
CREATE TABLE IF NOT EXISTS Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
