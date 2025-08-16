-- НАЙДИТЕ КЛИЕНТОВ, КОТОРЫЕ: --
-- 1) СДЕЛАЛИ ХОТЯ БЫ 2 ЗАКАЗА (ЛЮБЫХ) --
-- 2) ИМЕЮТ ХОТЯ БЫ ОДНУ ДОСТАВКУ СО СТАТУСОМ "DELIEVERED" --

select first_name || ' ' || last_name as full_name,
       country,
       count(order_id) as total_orders,
       sum(amount) as total_amount
from customers c 
join orders o 
on c.customer_id = o.customer_id 
-- Уже подготовленный датасет доставок --
where c.customer_id in (select customer from shippings s where s.status = 'Delivered')
group by c.customer_id, c.first_name, c.last_name, c.country
having count(o.order_id ) >=2
