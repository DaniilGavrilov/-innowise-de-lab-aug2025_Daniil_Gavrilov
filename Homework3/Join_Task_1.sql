-- ЗАДАЧА 1: ПОЛУЧИТЬ СПИСОК ЗАКАЗОВ ВМЕСТЕ С ИМЕНЕМ КЛИЕНТА, КОТОРЫЙ СДЕЛАЛ ЗАКАЗ --
SELECT FIRST_NAME,LAST_NAME,ITEM,AMOUNT
FROM CUSTOMERS
JOIN ORDERS 
ON CUSTOMERS.CUSTOMER_ID = ORDERS.CUSTOMER_ID 