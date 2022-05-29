USE employeetracker;

DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS roles;

CREATE TABLE companies (
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    name VARCHAR(50) NOT NULL,
    description TEXT 
    );

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    firstName VARCHAR(30) NOT null,
    lastName VARCHAR(30) NOT null,
    roleId INTEGER,
    managerId INTEGER,
    companiesId INTEGER,
    CONSTRAINT fk_companies FOREIGN KEY (companiesId) REFERENCES companies(id) ON DELETE SET NULL
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employees(id) ON DELETE SET NULL
);

CREATE TABLE roles (
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    name VARCHAR(50) NOT NULL,
    salary INTEGER
    CONSTRAINT fk_companies
    FOREIGN KEY (companiesId)
    REFERENCES companies(id)
    ON DELETE CASCADE
    );