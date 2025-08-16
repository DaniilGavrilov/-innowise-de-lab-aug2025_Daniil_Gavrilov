-- ЗАДАЧА 1: НАЙТИ ВСЕХ КЛИНЕТОВ ИЗ СТРАНЫ USA, КОТОРЫМ БОЛЬШЕ 25 ЛЕТ --
SELECT FIRST_NAME,LAST_NAME,AGE,COUNTRY
FROM CUSTOMERS 
WHERE AGE > 25 AND COUNTRY = 'USA'
