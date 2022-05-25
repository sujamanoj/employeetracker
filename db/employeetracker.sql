
CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    first_name VARCHAR(30) NOT null,
    last_name VARCHAR(30) NOT null,
    department VARCHAR(30) not null,
    role_id INTEGER,
    manager_id INTEGER
);



