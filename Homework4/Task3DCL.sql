-- 1 задние: создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем --
create user hr_user with password 'secure_pass123';
create role hr_user_role;

-- 2 задание: предостваить hr_user право SELECT на таблицу Employees
grant select on employees to hr_user_role;
grant hr_user_role to hr_user;

-- Решение проблемы с последовательностью 
grant usage, select on employees_employeeid_seq to hr_user_role

/*Задание 3: тест: В новой сессии подключиться как hr_user и попытаться
выполнить SELECT * FROM Employees;. (Должно сработать). */
select * from employees;

/*Задание 4: как hr_user, попытаться выполнить INSERT нового сотрудника в
Employees. (Должно завершиться неудачей). */
insert into employees (firstname,lastname,department,salary,email) values 
('Luke', 'Skywalker','Finance',64000.00,'LukeSky@gmail.com')

-- Задаиние 5: как пользователь-администратор, предоставить hr_user права insert и update на таблицу Employees
grant insert, update on employees to hr_user_role

-- Задание 6: выполнить insert и update, только в этот раз должно получиться
insert into employees (firstname,lastname,department,salary,email) values 
('Luke', 'Skywalker','Finance',64000.00,'LukeSky@gmail.com')

update employees
set salary = 65000.00
where email = 'LukeSky@gmail.com'

--Проверочка
select * from employees




