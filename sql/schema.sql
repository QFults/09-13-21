DROP DATABASE IF EXISTS school_db;

CREATE DATABASE school_db;

USE school_db;

CREATE TABLE departments (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE subjects (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) UNIQUE NOT NULL,
    credit INT NOT NULL,
    capacity INT NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE CASCADE
);

CREATE TABLE teachers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first VARCHAR(50) NOT NULL,
    last VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    subject_id INT,
    head_id INT,
    FOREIGN KEY (subject_id) REFERENCES subjects(id) ON DELETE SET NULL,
    FOREIGN KEY (head_id) REFERENCES teachers(id) ON DELETE SET NULL
);
