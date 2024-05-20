create schema LeaveManagement;
use LeaveManagement;
create table leaveManagement(
			sNo int primary key auto_increment,
			employeeID int unique,
            passWord varchar(20),
             employeeName varchar(20) unique,
                contactNumber long not null,
                emergencyContact long not null,
                 department varchar(20) not null
);


desc leaveManagement;

drop table leaveManagement;


create table leaveManage(
	sNo int primary key auto_increment,
	employeeID int not null,
     dateOfLeave date ,
            reasonOfLeave varchar(20) ,
            numberOfDays varchar(20),
            approval varchar(20)
            
);

desc leaveManage;

drop table leaveManage; 


create table manager(
	managerID int primary key,
    managerName varchar(20),
    password varchar(20)
);

insert manager (managerID, managerName, password) values(1001, 'Tamil', 'Tamil@12');
select * from manager;
drop table manager;

select * from leaveManagement;
select * from leaveManage;