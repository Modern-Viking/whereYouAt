DROP DATABASE IF EXISTS EMPLOYEE_TRACKER_DB;

CREATE DATABASE EMPLOYEE_TRACKER_DB;

USE EMPLOYEE_TRACKER_DB;

CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT(10) NOT NULL,
  manager_id INT(10)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id )
VALUES ("Nick", "Thomas", 1, 1);


USE EMPLOYEE_TRACKER_DB;

CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

INSERT INTO department (name)
VALUES ("Software Engineer");

USE EMPLOYEE_TRACKER_DB;

CREATE TABLE role(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,4) NOT NULL,
  department_id INT (10) NOT NULL
  );

INSERT INTO role (title, salary, department_id )
VALUES ("Software Developer", 80000.00, 1);

INSERT INTO role (title, salary, department_id )
VALUES ("UX/UI", 60000.00, 1);

INSERT INTO role (title, salary, department_id )
VALUES ("Tester", 50000.00, 1);