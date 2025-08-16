-- ЗАДАЧА 2: ПОСЧИТАЙТЕ ОБЩЕЕ КОЛИЧЕСТВО ЗАКАЗОВ И СРЕДНЮЮ СУММУ ПО КАЖДОМУ ТОВАРУ --
SELECT ITEM, COUNT(*), TRUNC(AVG(AMOUNT),2) AS AMOUNT_AVG
FROM ORDERS
GROUP BY ITEM