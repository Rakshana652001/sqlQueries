create schema LeaveManagement;
use LeaveManagement;
create table leaveManagement(
			sNo int primary key auto_increment,
			employeeID int not null,
             employeeName varchar(20) not null,
                contactNumber long not null,
                emergencyContact long not null,
                 department varchar(20) not null,
            dateOfLeave date not null,
            reasonOfLeave varchar(20) not null,
            numberOfDays int not null           
);


desc leaveManagement;
drop table leaveManagement;
select * from LeaveManagement;
