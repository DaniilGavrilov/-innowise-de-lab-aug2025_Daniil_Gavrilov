/* Задание 1: найти ProjectName всех проектов, в которых 'Bob Johnson'
работал более 150 часов.*/
select projectname 
from employees
join employeeprojects
on employees.employeeid = employeeprojects.employeeid 
join projects 
on employeeprojects.projectid = projects.projectid 
where firstname = 'Bob' and lastname = 'Johnson' and hoursworked > 150

/* Задание 2: Увеличить Budget всех проектов на 10%, если к ним назначен хотя
бы один сотрудник из отдела 'IT'.
 */

update projects 
set budget = budget * 1.1
where projectid in (select projectid
					from employeeprojects 
					join employees
					on employeeprojects.employeeid = employees.employeeid
					where department = 'Senior IT');

-- оператор select для проверочки
select * from projects

/*
 Задание 3: для любого проекта, у которого еще нет EndDate (EndDate IS
NULL), установить EndDate на один год позже его StartDate.
 */
update projects
set enddate = startdate  + interval '1 year'
where enddate is null

-- проверка
select * from projects

/*
 Задание 4: вставить нового сотрудника и немедленно назначить его на проект
'Website Redesign' с 80 отработанными часами, все в рамках одной
транзакции. Использовать предложение RETURNING, чтобы получить
EmployeeID вновь вставленного сотрудника.
 */
begin;

insert into employees (firstname,lastname,department,salary) values
('Eve', 'Davis', 'HR', 58000.00) returning employeeid; -- получил значение employeeid и добавил нового сотрудника

savepoint before_assigning

insert into employeeprojects (employeeid,projectid,hoursworked)
select 6,projectid,80
from employeeprojects e  
where projectid in (select projectid
					from projects
					where projectname = 'Website Redesign')
					
rollback to savepoint before_assigning;
commit;


			   






										 
