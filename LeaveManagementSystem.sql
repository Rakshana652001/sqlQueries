create schema LeaveManagement;
use LeaveManagement;
create table leaveManagement(
			sNo int primary key auto_increment,
			employeeID int not null,
             employeeName varchar(20) not null,
                contactNumber long not null,
                emergencyContact long not null,
                 department varchar(20) not null
);

select * from LeaveManagement;

desc leaveManagement;

drop table leaveManagement;


create table leaveManage(
	sNo int primary key auto_increment,
	employeeID int not null,
     dateOfLeave date,
            reasonOfLeave varchar(20) ,
            numberOfDays varchar(20)
);

desc leaveManage;
select * from leaveManage;
drop table leaveManage;
