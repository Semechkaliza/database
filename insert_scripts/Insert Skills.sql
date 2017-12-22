insert into skills(users_login) 
select login from users
where role='USER';
update skills
set java='2',NET='4',python='1'
where USERS_LOGIN in ('user1','user3','user5','user6','user9','user11','user12');
update skills
set java='5',NET='2',C ='3', JS='1'
where USERS_LOGIN in ('user2','user4','user6','user8','user10','user11','user7');
update skills
set pascal='3',C='2',python ='3',sql_db='4'
where USERS_LOGIN in ('user1','user4','user12');
