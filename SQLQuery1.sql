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

update EmployeePayrollservice set gender = 'F' where Id in(1002,1003,1004,1006,1,2,3)
update EmployeePayrollservice set gender = 'M' where Id in (1005,1007)

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





