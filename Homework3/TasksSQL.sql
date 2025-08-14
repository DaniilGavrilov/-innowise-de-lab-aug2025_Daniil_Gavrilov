-- ЧАСТЬ 1: WHERE --

-- ЗАДАЧА 1: НАЙТИ ВСЕХ КЛИНЕТОВ ИЗ СТРАНЫ USA, КОТОРЫМ БОЛЬШЕ 25 ЛЕТ --
SELECT FIRST_NAME,LAST_NAME,AGE,COUNTRY
FROM CUSTOMERS 
WHERE AGE > 25 AND COUNTRY = 'USA'

-- ЗАДАЧА 2: ВЫВЕДИТЕ ВСЕ ЗАКАЗЫ, У КОТОРЫХ СУММА (AMOUNT) БОЛЬШЕ 1000 --
SELECT ORDER_ID,ITEM,AMOUNT,CUSTOMER_ID 
FROM ORDERS
WHERE AMOUNT > 1000

-- ЧАСТЬ 2: JOIN --

-- ЗАДАЧА 1: ПОЛУЧИТЬ СПИСОК ЗАКАЗОВ ВМЕСТЕ С ИМЕНЕМ КЛИЕНТА, КОТОРЫЙ СДЕЛАЛ ЗАКАЗ --
SELECT FIRST_NAME,LAST_NAME,ITEM,AMOUNT
FROM CUSTOMERS
JOIN ORDERS 
ON CUSTOMERS.CUSTOMER_ID = ORDERS.CUSTOMER_ID 

-- ЗАДАЧА 2: ВЫВЕДИТЕ СПИСОК ДОСТАВОК СО СТАТУСОМ И ИМЕНЕМ КЛИЕНТА --
SELECT STATUS, FIRST_NAME,LAST_NAME
FROM CUSTOMERS 
JOIN SHIPPINGS
ON CUSTOMERS.CUSTOMER_ID = SHIPPINGS.CUSTOMER

-- ЧАСТЬ 3: GROUP BY --

-- ЗАДАЧА 1: ПОДСЧИТАЙТЕ КОЛИЧЕСТВО КЛИЕНТОВ В КАЖДОЙ СТРАНЕ --
SELECT COUNTRY, COUNT(*)
FROM CUSTOMERS
GROUP BY COUNTRY 

-- ЗАДАЧА 2: ПОСЧИТАЙТЕ ОБЩЕЕ КОЛИЧЕСТВО ЗАКАЗОВ И СРЕДНЮЮ СУММУ ПО КАЖДОМУ ТОВАРУ --
SELECT ITEM, COUNT(*), TRUNC(AVG(AMOUNT),2) AS AMOUNT_AVG
FROM ORDERS
GROUP BY ITEM


-- ЧАСТЬ 4: ORDER BY --

-- ЗАДАЧА 1: ВЫВЕДИТЕ СПИСОК КЛИЕНТОВ, ОТСОРТИРОВАННЫЙ ПО УБЫВАНИЮ --
SELECT FIRST_NAME, AGE
FROM CUSTOMERS
ORDER BY AGE DESC

-- ЧАСТЬ 5: SUBQUERIES --

-- ЗАДАЧА 1: НАЙДИТЕ ВСЕХ КЛИЕНТОВ, КОТОРЫЕ СДЕЛАЛИ ЗАКАЗ С МАКСИМАЛЬНОЙ СУММОЙ --
SELECT FIRST_NAME, LAST_NAME, AMOUNT
FROM CUSTOMERS
JOIN ORDERS
ON CUSTOMERS.CUSTOMER_ID = ORDERS.CUSTOMER_ID 
WHERE AMOUNT = (SELECT MAX(AMOUNT) FROM ORDERS)

-- ЧАСТЬ 6: WINDOW FUNCTIONS --

-- ЗАДАЧА 1: ДЛЯ КАЖДОГО ЗАКАЗА ДОБАВЬТЕ КОЛОНКУ С СУММОЙ ВСЕХ ЗАКАЗОВ ЭТОГО КЛИЕНТА (ИСПОЛЬЗУЯ ОКОННУЮ ФУНКЦИЮ) --
SELECT ORDER_ID, 
	   ORDERS.CUSTOMER_ID, 
	   ITEM, AMOUNT, 
	   SUM(AMOUNT) OVER (PARTITION BY ORDERS.CUSTOMER_ID) AS TOTAL_BY_CUSTOMER
FROM ORDERS
JOIN CUSTOMERS
ON CUSTOMERS.CUSTOMER_ID = ORDERS.CUSTOMER_ID 
ORDER BY ORDER_ID

-- ЧАСТЬ 7 (ТА, ЧТО ОПЦИОНАЛЬНАЯ)

-- НАЙДИТЕ КЛИЕНТОВ, КОТОРЫЕ: --
-- 1) СДЕЛАЛИ ХОТЯ БЫ 2 ЗАКАЗА (ЛЮБЫХ) --
-- 2) ИМЕЮТ ХОТЯ БЫ ОДНУ ДОСТАВКУ СО СТАТУСОМ "DELIEVERED" --

SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME,
       COUNTRY,
       COUNT (ORDER_ID) AS TOTAL_ORDERS,
       SUM (AMOUNT) AS TOTAL_AMOUNT
FROM CUSTOMERS
JOIN ORDERS
ON CUSTOMERS.CUSTOMER_ID = ORDERS.CUSTOMER_ID 
JOIN SHIPPINGS
ON CUSTOMERS.CUSTOMER_ID = SHIPPINGS.CUSTOMER
WHERE STATUS = 'DELIVERED'
GROUP BY CUSTOMERS.CUSTOMER_ID, FIRST_NAME, LAST_NAME, COUNTRY 
HAVING COUNT(ORDER_ID) >=2









