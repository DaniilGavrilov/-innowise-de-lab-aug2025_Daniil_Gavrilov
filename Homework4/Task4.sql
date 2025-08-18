-- Увеличить Salary всех сотрудников в отделе 'HR' на 10%
update employees 
set salary = salary * 1.10
where department = 'IT';

-- Обновить Department любого острудника с Salary выше 70000.00 на 'Senior IT'
update employees
set department = 'Senior IT'
where salary > 70000.00;

/* Удалить всех сотрудников, которые не назначены ни на один проект в
таблице EmployeeProjects. Подсказка: Используйте подзапрос NOT
EXISTS или LEFT JOIN */
delete from employees 
where not exists (
select *
from employeeprojects
where employeeprojects.employeeid = employees.employeeid )

/*Вставить новый проект и назначить на него двух существующих
сотрудников с определенным количеством HoursWorked в
EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.*/
begin;

insert into projects (projectname,budget,startdate,enddate) values 
('Game development',250000.00,'2023-02-22','2023-12-22')

insert into employeeprojects (employeeid,projectid,hoursworked) values
(1,4,200),
(2,4,178);

commit;



