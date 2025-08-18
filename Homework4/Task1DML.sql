--Задание 1: вставить двух новых сотрудников в таблицу Employees --
insert into employees (firstname,lastname,department,salary) values
('Dean','Wincheaster','HR',59000.00),
('Sam','Wincheaster','IT',78000.00);

-- Задание 2:выбрать всех сотрудников из таблицы Employees --
select distinct firstname,lastname from employees;

-- Задание 3: выбрать только FirstName и LastName сотрудников из отдела "IT" --
select distinct firstname,lastname
from employees
where department = 'IT';

-- Задание 4: обновить Salary 'Alice Smith' до 65000.00 --
update employees
set salary = 65000.00
where firstname = 'Alice' and lastname = 'Smith';

-- Задание 5: удалить сотрудника, чья LastName - 'Prince'

-- Сперва снял ограничения, чтобы не возникала ошибка --
alter table employeeprojects drop constraint employeeprojects_employeeid_fkey;
-- Потом создал новое, но уже с возможностью удаления записи из таблицы --
alter table employeeprojects add constraint employeeprojects_employeeid_fkey foreign key (employeeid) references employees (employeeid) on delete cascade;
-- Собственно само удаление --
delete from employees 
where lastname = 'Prince';

-- Задание 6: Проверить все изменения, используя SELECT * FROM Employees --
select * from employees


