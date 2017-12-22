1.select LOGIN,NAME,SNAME,RATING
from users
where RATING>0;
2.select distinct NAME,SNAME
from users join interested_users join vacancy
on users.LOGIN=interested_users.USERS_LOGIN and interested_users.VACANCY_ID=vacancy.ID
where PRIORITY_SKILL in ('Java','SQL');
3.select preview.USERS_LOGIN,preview.DATE as prev_date,
tech_interview.DATE as tech_date from preview join tech_interview
on preview.USERS_LOGIN=tech_interview.USERS_LOGIN 
where datediff(tech_interview.DATE,preview.DATE)>14;
4.select LOGIN,NAME,SNAME,if(PROCESSED=1,'yes','no') AS INTERVIEW,VACANCY,COMPANY 
from users join interested_users join vacancy
on users.LOGIN=interested_users.USERS_LOGIN and interested_users.VACANCY_ID=vacancy.ID;
5.select distinct VACANCY,COMPANY
from vacancy join interested_users
on vacancy.ID=interested_users.VACANCY_ID
where PROCESSED=true;
6.select distinct NAME,SNAME,COMPANY
from users join interested_users left join vacancy
on vacancy.ID=interested_users.VACANCY_ID and interested_users.USERS_LOGIN=users.LOGIN
where COMPANY='IBM';
7.select count(USERS_LOGIN), VACANCY,COMPANY
from interested_users join vacancy 
on interested_users.VACANCY_ID=vacancy.ID
group by VACANCY,COMPANY
having count(USERS_LOGIN) > 1;
8.select preview.PLACE as kab from preview
union
select tech_interview.PLACE as kab from tech_interview;
9.select LOGIN,NAME,SNAME from users
where exists
	(select users.LOGIN from tech_interview
    where users.LOGIN=tech_interview.USERS_LOGIN);
10.select LOGIN,NAME,SNAME
from users
where LOGIN in 
	(select USERS_LOGIN
	 from interested_users);