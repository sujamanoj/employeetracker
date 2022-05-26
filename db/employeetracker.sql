DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS companies;

CREATE TABLE companies (
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    name VARCHAR(50) NOT NULL,
    description TEXT 
);

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    firstName VARCHAR(30) NOT null,
    lastName VARCHAR(30) NOT null,
    department VARCHAR(30) not null,
    roleId INTEGER,
    managerId INTEGER,
    companiesId INTEGER,
    CONSTRAINT fk_companies FOREIGN KEY (companiesId) REFERENCES companies(id) ON DELETE SET NULL);

