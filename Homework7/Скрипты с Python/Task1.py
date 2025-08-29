# Задача 1: Список покупок
# Задание: У вас есть список продуктов, которые нужно купить. Напишите программу,
# которая выводит этот список в виде пронумерованного перечня.

def create_shopping_list_func(list):
    count = 0
    for i in list:
        count += 1
        print(f"{count}. {i}")


shopping_list = ["milk", "bread", "eggs","butter","apples"]
print("Список покупок")
create_shopping_list_func(shopping_list)
