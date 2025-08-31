﻿# Упражнение 2: Функции с параметрами
# Дан повторяющийся код расчёта цены с НДС:
# prices = [1000, 3499, 250]
# nds = 0.20
# print(prices[0] + prices[0] * nds)
# print(prices[1] + prices[1] * nds)
# print(prices[2] + prices[2] * nds)

# Задание:
# 1) Вынесите расчёт в функцию add_vat().
# 2) Примените её ко всем элементам списка в цикле и распечатайте
# итоговые цены, используйте цикл.

def add_vat(price,nds):
        return price + price * nds

def ouput_result_prices(prices):
    for i in range(len(prices)):
        print(f"{add_vat(prices[i],nds)}")

prices = [1000, 3499, 250]
nds = 0.20

print("Итоговые цены: ")
ouput_result_prices(prices)