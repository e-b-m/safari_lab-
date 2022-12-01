
DROP TABLE animals; 
DROP TABLE employees;
DROP TABLE assignment; 
DROP TABLE enclosures; 


CREATE TABLE animals (
id SERIAL PRIMARY KEY, 
name VARCHAR(255),
type VARCHAR(255), 
age INT, 
enclosure_id INT
); 

CREATE TABLE enclosures (
id SERIAL PRIMARY KEY, 
name VARCHAR(255), 
capacity INT, 
closedForMaintenance BOOLEAN
);


CREATE TABLE assignment(
id SERIAL PRIMARY KEY, 
employee_id INT REFERENCES employees(id),
enclosure_id INT REFERENCES enclosures(id), 
day VARCHAR(255)
); 


CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(255), 
employeeNumber INT
);


INSERT INTO animals(name, type, age) VALUES ('Mildred', 'Capybara', 13); 