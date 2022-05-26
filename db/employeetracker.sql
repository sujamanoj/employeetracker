
CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    first_name VARCHAR(30) NOT null,
    last_name VARCHAR(30) NOT null,
    department VARCHAR(30) not null,
    role_id INTEGER,
    manager_id INTEGER
);
CREATE TABLE companies(
    id INTEGER AUTO_INCREMENT PRIMARY Key,
    name VARCHAR(50) NOT NULL,
    description TEXT
);
INSERT INTO companies(name, description)
     VALUE ('Banza','dry pasta production'),
     ('Caesars pasta','frozen foods'),
     ('Mass tv','Multimedia production and steaming platform');

