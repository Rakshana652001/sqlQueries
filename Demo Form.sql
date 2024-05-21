create schema form;
use form;

create table demo(
	name varchar(20) unique,
    emailID varchar(20),
    phoneNumber varchar(10)
);


desc demo;
drop table demo;
select * from demo;