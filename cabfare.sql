create schema cabfaredb;
use cabfaredb;
create table cabfare(
			user_id int primary key,
            user_Name varchar(20),
            km double,
            cab_fare varchar(20),
            micro double,
            mini double,
            prime double
);
desc cabfare;
insert into cabfare(user_id, user_name, km, cab_fare)values(1, 'A', 20, 'micro (rs.10/km)');
insert into cabfare(user_id, user_name, km, cab_fare)values(2, 'B', 30, 'mini (rs.15)');
insert into cabfare(user_id, user_name, km, cab_fare)values(3, 'C', 50, 'prime (rs.20/km)');
alter table cabfare add date date;
update cabfare set user_name = 'A' where user_id=1;
alter table cabfare add micro double;
alter table cabfare add result double;


update cabfare set micro = 10 where user_id = 1;
alter table cabfare add mini double;
update cabfare set mini = 15 where user_id = 2;
alter table cabfare add prime double;
update cabfare set prime = 20 where user_id = 3;
select km * mini as result from cabfare;
update cabfare set result = km*micro where user_id = 1;
update cabfare set result = km*mini where user_id = 2;
update cabfare set result = km*prime where user_id = 3;
update cabfare set date = '2024-04-10' where user_id=1;
update cabfare set date = '2024-04-11' where user_id=2;
update cabfare set date = '2024-04-12' where user_id=3;
update cabfare set micro = null where user_id=3;

select * from cabfare;