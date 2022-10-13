----- uc1 create database-------
create database EmployeePayrollservice

use EmployeePayrollservice
------- uc2 createtable--------
create table EmployeePayrollservice
(
    Id int primary key identity,
	Name varchar(200),
	Salary int,
	StartDate Date
);

-----uc3 intsert data--------
insert into EmployeePayrollservice(Name,Salary,StartDate)values
                                                 ('navitha',10000,GETDATE()),
												 ('Devi',20000,GETDATE()),
												 ('Madhu',40000,GETDATE()),
												 ('kiran',35000,GETDATE()),
												 ('Akshara',45000,GETDATE()),
												 ('Aditya',85000,GETDATE())

--------UC4 retrive all data--------

select * from EmployeePayrollservice

-------UC5 Ability to retrieve salary data for a particular value ---------


select salary from EmployeePayrollservice where Name = 'Akshara'

select salary from EmployeePayrollservice WHERE StartDate BETWEEN Cast('2018-01-01'
AS Date) AND Date(NOW());
----uc6 Ability to add Gender to Employee---------

alter table EmployeePayrollservice
add gender char(1);

update EmployeePayrollservice set gender = 'F' where Id in(1,2,5)
update EmployeePayrollservice set gender = 'M' where Id in (3,4,6)

-----UC7 Ability to find sum, average, min, max--------

select sum(salary) as Totalsalary from EmployeePayrollservice where gender = 'M' group by gender

select sum(salary) as Totalsalary from EmployeePayrollservice where gender = 'F' group by gender

select avg(salary) as averagesalary from EmployeePayrollservice where gender = 'M' group by gender
select avg(salary) as averagesalary from EmployeePayrollservice where gender = 'F' group by gender

select min(salary) as minimumsalary from EmployeePayrollservice where gender = 'M' group by gender
select min(salary) as minimumsalary from EmployeePayrollservice where gender = 'F' group by gender

select max(salary) as maximumsalary from EmployeePayrollservice where gender = 'M' group by gender
select max(salary) as maximumsalary from EmployeePayrollservice where gender = 'F' group by gender

select count(salary) as countsalary from EmployeePayrollservice where gender = 'M' group by gender
select count(salary) as countsalary from EmployeePayrollservice where gender = 'F' group by gender

---------UC8 Ability to extend store employee information like employee phone, address and department--------

alter table EmployeePayrollservice  Add phonenumber varchar(200)  
alter table EmployeePayrollservice Add Address varchar(250) 
alter table EmployeePayrollservice Add Department varchar(250)

insert into EmployeePayrollservice(Name,Salary,StartDate,phonenumber,Address,Department)values
                                                 
												 ('navitha',10000,GETDATE(),9867543876,'Banglore','HR'),
						                         ('Devi',20000,GETDATE(),6789543786,'Chennai','Manager'),
												 ('Madhu',40000,GETDATE(),6543789534,'Vizag','Marketing Manager'),
												 ('kiran',35000,GETDATE(),9867543783,'Hyderabad','Asst.Manager'),
												 ('Akshara',45000,GETDATE(),9956784352,'Vijayawada','TeamLead'),
												 ('Aditya',85000,GETDATE(),6598763298,'Kolkata','Executive Emp')


Drop table EmployeePayrollservice
select * from EmployeePayrollservice

-------------UC9 Ability to extend employee_payroll table to have Basic Pay,Deductions, Taxable Pay,Income Tax, Net Pay-------------------------------------
alter table EmployeePayrollservice add Deduction bigint 
alter table EmployeePayrollservice add Taxablepay bigint 
alter table EmployeePayrollservice add Tax bigint 
alter table EmployeePayrollservice add Netpay bigint 
--------------UC10 TERISA-------------------------
insert into EmployeePayrollservice(Name,Salary,StartDate,gender)values ('Terisa',55000,GETDATE(),'F')
insert into EmployeePayrollservice(Name,Salary,StartDate,phonenumber,Address,Department,gender,Deduction,Taxablepay,Tax,Netpay)values ('Terisa',3000000,GETDATE(),6789546738,'Banglore','HR','F',10000,300000,200000,1500000)



 