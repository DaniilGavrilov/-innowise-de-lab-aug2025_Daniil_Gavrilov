/*Задание 1: 
Создать функцию PostgreSQL с именем
CalculateAnnualBonus, которая принимает employee_id и
Salary в качестве входных данных и возвращает рассчитанную
сумму бонуса (10 % от Salary) для этого сотрудника. Используйте
PL/pgSQL для тела функции.*/

create or replace function CalculateAnnualBonus(employee_id integer, salary numeric)
returns numeric
language plpgsql
as $$
declare
	bonus numeric;
begin
	bonus := salary * 0.10;
    return bonus;
end;
$$;

/*
 Задание 2: Использовать эту функцию в операторе SELECT, чтобы увидеть
потенциальный бонус для каждого сотрудника.
 */
select firstname,lastname, calculateannualbonus(employeeid,salary) as annual_bonus
from employees

/*
 Задание 3: Представление (View): Создать представление с именем
IT_Department_View, которое показывает EmployeeID,
FirstName, LastName и Salary только для сотрудников из отдела
'IT'.
 */
create or replace view IT_Department_View as
select employeeid,firstname,lastname,salary
from  employees
where department = 'IT'

-- Задание 4: Выбрать данные из вашего представления
select * from IT_Department_View;



