
DROP TABLE animals;
DROP TABLE assignment;
DROP TABLE enclosures;   
DROP TABLE employees;


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

CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(255), 
employeeNumber INT
);


CREATE TABLE assignment(
id SERIAL PRIMARY KEY, 
employee_id INT REFERENCES employees(id),
enclosure_id INT REFERENCES enclosures(id), 
day_of_the_week VARCHAR(255)
); 


INSERT INTO animals(name, type, age) VALUES ('Sir Fluffy', 'Lion', 18);
INSERT INTO animals(name, type, age) VALUES ('Clifford', 'Tiger', 15);
INSERT INTO animals(name, type, age) VALUES ('Rocky', 'Tortoise', 300);
INSERT INTO animals(name, type, age) VALUES ('Wolfy', 'Ice Wolf', 25);
INSERT INTO animals(name, type, age) VALUES ('Ice', 'Penguin', 25);
INSERT INTO animals(name, type, age) VALUES ('Gloria', 'Hippo', 22);
INSERT INTO animals(name, type, age) VALUES ('Sharky', 'Shark', 35);
INSERT INTO animals(name, type, age) VALUES ('Jaws', 'Piranha', 11);
INSERT INTO animals(name, type, age) VALUES ('Spiny', 'Spiny dog fish', 150);
INSERT INTO animals(name, type, age) VALUES ('Stripy', 'Zebra', 10);

INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES ('Ice Enclosure', 5, TRUE);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES ('Land Enclosure', 5, 1);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES ('Sea Enclosure', 5, 1);

INSERT INTO employees(name, employeeNumber) VALUES ('Saad', 1);
INSERT INTO employees(name, employeeNumber) VALUES ('Emma', 2);
INSERT INTO employees(name, employeeNumber) VALUES ('Zsolt', 3);
INSERT INTO employees(name, employeeNumber) VALUES ('Anna', 4);
INSERT INTO employees(name, employeeNumber) VALUES ('Ed', 5);
INSERT INTO employees(name, employeeNumber) VALUES ('Eoan', 6);

INSERT INTO assignment(e)

