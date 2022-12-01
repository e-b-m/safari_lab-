
DROP TABLE animals;
DROP TABLE assignment;
DROP TABLE enclosures;   
DROP TABLE employees;
DROP TABLE assignment; 
DROP TABLE enclosures; 




CREATE TABLE enclosures (
id SERIAL PRIMARY KEY, 
name VARCHAR(255), 
capacity INT, 
closedForMaintenance BOOLEAN
);

CREATE TABLE animals (
id SERIAL PRIMARY KEY, 
name VARCHAR(255),
type VARCHAR(255), 
age INT, 
enclosure_id INT
); 

CREATE TABLE assignment(
id SERIAL PRIMARY KEY, 
name VARCHAR(255), 
capacity INT, 
closedForMaintenance BOOLEAN
);

CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(255), 
employeeNumber INT
);





INSERT INTO animals(name, type, age, enclosure_id) VALUES ("Mildred", "Capybara", 13); 