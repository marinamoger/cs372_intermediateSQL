-- Write the query to create the 4 tables below.
SET foreign_key_checks = 0;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS works_on;
SET foreign_key_checks = 1;

CREATE TABLE client (
    id int(11) AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(255) NOT NULL, 
    last_name varchar(255) NOT NULL, 
    email varchar(255) NOT NULL, 
    CONSTRAINT full_name UNIQUE (first_name, last_name)
);

CREATE TABLE employee (
    id int(11) AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(255) NOT NULL, 
    last_name varchar(255) NOT NULL,
    start_date date NOT NULL,
    email varchar(255) NOT NULL,
    CONSTRAINT full_name UNIQUE (first_name, last_name)
);

CREATE TABLE project (
    id int(11) AUTO_INCREMENT PRIMARY KEY,
    title varchar(255) NOT NULL UNIQUE,
    comments text,
    cid int, 
    FOREIGN KEY (cid) REFERENCES client(id)
);

CREATE TABLE works_on (
    pid int, 
    eid int, 
    due_date date NOT NULL,
    PRIMARY KEY (eid, pid),
    FOREIGN KEY (pid) REFERENCES project(id), 
    FOREIGN KEY (eid) REFERENCES employee(id) 
);
