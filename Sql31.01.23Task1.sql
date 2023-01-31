Create Database Bravo

Use Bravo


Create Table Employees 
(
Id Int Identity Primary Key,
FullName Nvarchar(100) Not Null Check(Len(FullName)>=3),
Salary Money Check(Salary>=0),
DepartmentId int,
Email Nvarchar(100) Not Null Unique
)

Create Table Departments 
(
Id Int,
Name Nvarchar(100) Not Null Check(Len(Name)>=2)
)

Alter Table Departments
Add EmployeeID  Int   Not Null Foreign Key References Employees(Id)