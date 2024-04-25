create schema LeaveManagementSystemDb;
use LeaveManagementSystemDb;
create table LeaveManagementSystem
(
	 employeeID int primary Key auto_increment,
     dateOfLeave date ,
     reasonOFLeave varchar(20),
     numberOfDays int
);
desc LeaveManagementSystem;
insert into LeaveManagementSystem(employeeID, dateOfLeave, reasonOFLeave, numberOfDays)values(1, '2024-05-06', 'Emergency', 10);
insert into LeaveManagementSystem(employeeID, dateOfLeave, reasonOFLeave, numberOfDays)values(3557,'2024-05-23', 'hospitalized', 15);
insert into LeaveManagementSystem(employeeID, dateOfLeave, reasonOFLeave, numberOfDays)values(3565, '2024-06-20' , 'Maternity', 6);
UPDATE `leavemanagementsystemdb`.`LeaveManagementSystem` SET `employeeID` = '1' WHERE (`employeeID` = '3556');
UPDATE `leavemanagementsystemdb`.`LeaveManagementSystem` SET `employeeID` = '2' WHERE (`employeeID` = '3557');
UPDATE `leavemanagementsystemdb`.`LeaveManagementSystem` SET `employeeID` = '3' WHERE (`employeeID` = '3565');
alter table LeaveManagementSystem rename column reasonOFLeave to reasonOfLeave;
alter table LeaveManagementSystem add payOff long;
update LeaveManagementSystem set payOff = 'no payOff' where employeeID = 1; 
update LeaveManagementSystem set numberOfDays = 5 where employeeID=1;
update LeaveManagementSystem set payOff = 'get permission from higher officials' where employeeID = 2;
update LeaveManagementSystem set payOff = 'no Payoff & Work from home' where employeeID = 3;
insert into LeaveManagementSystem(employeeID, dateOfLeave, reasonOfLeave, numberOfDays, payOff)values(4,'2024-04-12', 'Hospitalized', 5 ,'Payoff detected (50/Day)');
alter table LeaveManagementSystem add allowedLeaveDays int;
update LeaveManagementSystem set allowedLeaveDays = 5 where reasonOfLeave = 'emergency';
update LeaveManagementSystem set allowedLeaveDays = 10 where reasonOfLeave = 'hospitalized';
update LeaveManagementSystem set allowedLeaveDays = 6 where reasonOfLeave = 'maternity'; 
update LeaveManagementSystem set payOff = 'no Payoff & work from home' where reasonOfLeave = 'maternity';
insert into LeaveManagementSystem(employeeID, dateOfLeave, ReasonOfLeave, numberOfDays)values(5, '2024-06-6', 'maternity', 5);
alter table LeaveManagementSystem add months varchar(10);
update LeaveManagementSystem set months = 'inMonths' where reasonOfLeave='maternity';
drop table LeaveManagementSystem;
select * from LeaveManagementSystem;




create table leaveManagementSystem(
			employeeID int primary key auto_increment,
             employeeName varchar(20),
                contactNumber long,
                 department varchar(20),
            dateOfLeave date,
            reasonOfLeave varchar(20),
            numberOfDays int,
            months varchar(20)
           
);
desc leaveManagementSystem;

insert into leaveManagementSystem(employeeID, employeeName, contactNumber, department, dateOfLeave, reasonOfLeave, numberOfDays)values(3556, 'A', 1234567890, 'Devoloper', '2024-04-06', 'Sick', 2);

insert into leaveManagementSystem(employeeName, contactNumber, department, dateOfLeave, reasonOfLeave, numberOfDays)values('B', 1234567891, 'Business Devolopment', '2024-04-23', 'Emergency', 1);

insert into leaveManagementSystem(employeeName, contactNumber, department, dateOfLeave, reasonOfLeave, numberOfDays)values('C', 1233432891, 'Admin', '2024-02-23', 'Maternity', 6);

alter table leaveManagementSystem add months varchar(20);

update leaveManagementSystem set numberOfDays='' where employeeID=3558;

update leaveManagementSystem set months='6 months' where employeeID=3558;

drop table leaveManagementSystem;
select * from leaveManagementSystem;
