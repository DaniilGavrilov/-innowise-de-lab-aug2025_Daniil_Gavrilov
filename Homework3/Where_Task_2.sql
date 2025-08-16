-- ЗАДАЧА 2: ВЫВЕДИТЕ ВСЕ ЗАКАЗЫ, У КОТОРЫХ СУММА (AMOUNT) БОЛЬШЕ 1000 --
SELECT ORDER_ID,ITEM,AMOUNT,CUSTOMER_ID 
FROM ORDERS
WHERE AMOUNT > 1000