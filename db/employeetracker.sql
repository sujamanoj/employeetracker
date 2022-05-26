DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS companies;

CREATE TABLE companies(
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

CREATE TABLE employee(
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    first_name VARCHAR(30) NOT null,
    last_name VARCHAR(30) NOT null,
    department VARCHAR(30) not null,
    role_id INTEGER,
    companies_id INTEGER,
    manager_id INTEGER,
    CONSTRAINT fk_companies FOREIGN Key (companies_id) REFERENCES companies(id) ON DELETE SET NULL
);


