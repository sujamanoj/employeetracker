INSERT INTO companies(name, description)
     VALUE ('Banza','dry pasta production'),
     ('Caesars pasta','frozen foods'),
     ('Mass tv','Multimedia production and steaming platform');


INSERT INTO employee (firstName, lastName, department, roleId, managerId, companiesId)
VALUE ('vince','switzer','plant manager', 1, 1, 1),
('Gorge','cedano','process manager', 1, 1, 1),
('mohammad','hussian','quality manager', 1, 1, 1),
('nader','maddi','lead mechcanic', 2, 2, 1),
('ricardo','bernal','supervisor', 3, 3, 1),
('petra','sermento','QA Lead', 2, 4, 1),
('stephen', 'stein', 'plant manager',1, 1, 2),
('alex','medena', 'process manager',1,5, 2),
('trishul','manoj','cfo',1, 1, 2),
('lynn','maggie','accounting',1,1, 2),
('suja','manoj','content manager',1,1, 3),
('vara','manoj','content supervisor', 3,6, 3),
('sana', 'manoj','marketing manager',1,6, 3),
('krishna', 'mahesh', 'content lead',2,6, 3 );

