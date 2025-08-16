-- ЗАДАЧА 1: ПОДСЧИТАЙТЕ КОЛИЧЕСТВО КЛИЕНТОВ В КАЖДОЙ СТРАНЕ --
SELECT COUNTRY, COUNT(*)
FROM CUSTOMERS
GROUP BY COUNTRY 