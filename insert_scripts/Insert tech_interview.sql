insert into tech_interview(vacancy_id,user_login)
select vacancy_id,user_login from preview
where result>5;
update tech_interview
set date=20171222,time=110000,place='342',result=9
where VACANCY_ID=1 and USERS_LOGIN='user3';
update tech_interview
set date=20180122,time=100000,place='387'
where VACANCY_ID=2;
update tech_interview
set date=20180112,time=173000,place='134'
where VACANCY_ID=3 and USERS_LOGIN='user11';
update tech_interview
set date=20180115,time=090000,place='234'
where VACANCY_ID=3 and USERS_LOGIN='user9';
