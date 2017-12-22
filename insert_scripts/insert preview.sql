insert into preview(vacancy_id,users_login)
select VACANCY_ID,USERS_LOGIN from interested_users;
update preview
set date=20171223,time=1500
where VACANCY_ID=1 or VACANCY_ID=2;
update preview
set date=20171220,time=1600
where VACANCY_ID=3 or VACANCY_ID=4;
update preview
set place='432',time=1700
where VACANCY_ID=3 or VACANCY_ID=5;
update preview
set date=20171220,place='231'
where VACANCY_ID=2 or VACANCY_ID=5;
update preview
set place='345'
where USERS_LOGIN in ('user1','user10','user5');
update preview
set place='129'
where USERS_LOGIN in ('user2','user3','user12');
update preview
set date=20180120, time=170000, place='543'
where VACANCY_ID=3 and USERS_LOGIN='user12';
update preview
set result=5
where VACANCY_ID=4 and USERS_LOGIN='user10';
update preview
set result=6
where VACANCY_ID=3 and USERS_LOGIN='user11';
update preview
set result=-1
where VACANCY_ID=4 and USERS_LOGIN='user12';
update preview
set result=8
where VACANCY_ID=2 and USERS_LOGIN='user2';
update preview
set result=7
where VACANCY_ID=1 and USERS_LOGIN='user3';
update preview
set result=5
where VACANCY_ID=1 and USERS_LOGIN='user5';
update preview
set result=3
where VACANCY_ID=5 and USERS_LOGIN='user5';
update preview
set result=2
where VACANCY_ID=3 and USERS_LOGIN='user8';
update preview
set result=9
where VACANCY_ID=2 and USERS_LOGIN='user9';
update preview
set result=8
where VACANCY_ID=3 and USERS_LOGIN='user9';

