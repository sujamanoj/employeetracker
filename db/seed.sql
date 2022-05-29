INSERT INTO companies(name, description)
     VALUE ('Banza','dry pasta production'),
     ('Caesars pasta','frozen foods'),
     ('Mass tv','Multimedia production and steaming platform');


INSERT INTO employee (firstName, lastName, roleId, managerId, companiesId)
VALUE ('vince','switzer', 1, 1, 1),
('Gorge','cedano', 2, 1, 1),
('mohammad','hussian', 3, 1, 1),
('nader','maddi', 4, 2, 1),
('ricardo','bernal',4 , 3, 1),
('petra','sermento', 5, 4, 1),
('stephen', 'stein', 6, 1, 2),
('alex','medena', 6,5, 2),
('trishul','manoj',6, 1, 2),
('lynn','maggie',7,1, 2),
('suja','manoj',8,1, 3),
('vara','manoj', 9,6, 3),
('sana', 'manoj',8,6, 3),
('krishna', 'mahesh', 10,6,3 );



INSERT INTO roles(name, salary, companiesId)
     VALUE ('plant manager',30000, 1),
     ('product manager ',12000, 1 ),
     ('QC manager',15000, 1),
     ('supervisor',15000, 1),
     ('QC LEAD',15000, 1),
     ('CK manager',15000, 2),
     ('ACCOUNTANT',15000, 2),
     ('content manager',15000,3),
     ('content supervisor',15000, 3),
     ('content lead',15000, 3);
    
