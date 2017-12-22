insert into users(login,password,name,sname,rating) 
values ('user1',md5('12345'),'Amy','Pond',1),
('user6',md5('54321'),'Doctor','Who',0),
('user5',md5('qwerty'),'Rory','Williams',2),
('user3',md5('qwe'),'Clara','Oswald',1),
('user2',md5('1234'),'Irina','Ageenko',-1),
('user4',md5('4321'),'Ivan','Shinkevich',0),
('user7',md5('poiuy'),'Liana','Chazaliya',0),
('user8',md5('ytrewq'),'Kseniya','Lichanova',1),
('user9',md5('98765'),'Arya','Stark',0),
('user11',md5('3456'),'Sansa','Stark',1),
('user10',md5('11111'),'John','Snow',-1);
insert into users(login,password,name,sname,role) 
values ('user12',md5('8765'),'Darina','Litvin','USER'),
('admin0',md5('0000'),'Liza','Grishkina','ADMIN'),
('admin1',md5('qwerty'),'Andrew','Grishkin','ADMIN'),
('admin3',md5('qwe'),'Maria','Crane','ADMIN');
