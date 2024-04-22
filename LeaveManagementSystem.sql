create schema LeaveManagementSystemDb;
use LeaveManagementSystemDb;
create table LeaveManagementSystem
(
	 employeeID int primary Key auto_increment,
     dateOfLeave date auto_increment,
     reasonOFLeave varchar(20),
     numberOfDays int
);
desc LeaveManagementSystem;
insert into LeaveManagementSystem(employeeID, dateOfLeave, reasonOFLeave, numberOfDays)values(3556, '2024-05-06', 'Emergency', 10);
insert into LeaveManagementSystem(employeeID, dateOfLeave, reasonOFLeave, numberOfDays)values(3557,'2024-05-23', 'hospitalized', 15);
insert into LeaveManagementSystem(employeeID, dateOfLeave, reasonOFLeave, numberOfDays)values(3565, '2024-06-20' , 'Maternity', 6);
UPDATE `leavemanagementsystemdb`.`LeaveManagementSystem` SET `employeeID` = '1' WHERE (`employeeID` = '3556');
UPDATE `leavemanagementsystemdb`.`LeaveManagementSystem` SET `employeeID` = '2' WHERE (`employeeID` = '3556');
UPDATE `leavemanagementsystemdb`.`LeaveManagementSystem` SET `employeeID` = '3' WHERE (`employeeID` = '3556');

select * from LeaveManagementSystem;