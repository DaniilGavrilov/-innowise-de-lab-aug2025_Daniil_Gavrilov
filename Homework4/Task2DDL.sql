/*Задание 1: создать новую таблицу с именем Departments со столбцами:
DepartmentID (SERIAL PRIMARY KEY), DepartmentName
(VARCHAR(50), UNIQUE, NOT NULL), Location (VARCHAR(50)).*/
create table Departments (
DepartmentID serial primary key,
DepartmentName varchar(50) unique not null,
Location varchar (50)
);

-- Задание 2: измненить таблицу Employees,добавив новый столбец с именем Email (varchar(100)) -- 
alter table employees add column Email varchar(100);

-- Задание 3: добавить ограничение UNIQUE к столбцу Email в таблице Employees, предварительно заполнив любыми значениями --
-- Заполняем столбик email значениями --
update  employees 
set email = 'AliceSmith@gmail.com'
where employeeid = 1;

update employees
set email = 'BobJohnson@gmail.com'
where employeeid = 2;

update employees
set email = 'CharlieBrown@gmail.com'
where employeeid = 3;

update employees
set email = 'EveDavis@gmail.com'
where employeeid =5;

update employees
set email = 'DeanWin@gmail.com'
where employeeid = 6;

update employees 
set email = 'SamWin@gmail.com'
where employeeid = 7;

-- Добавляем ограничение Unique к столбцу Email -- 
alter table employees add constraint UQ_Email unique (email);

-- Задание 4: переименовать столбец Location в таблице Departments в OfficeLocation --
alter table departments rename column "location" to OfficeLocation;


