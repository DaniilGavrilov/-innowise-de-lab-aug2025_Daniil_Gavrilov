#Упражнение 3: Методы списка
# Исходный список: fruits = ["apple", "banana"]
# Выполните следующие операции по порядку:
# 1. Добавьте "orange" в конец списка
# 2. Вставьте "grape" по индексу 1
# 3. Удалите "banana"
# 4. Отсортируйте список
# 5. Переверните список
# Выводите список на печать после каждого шага

fruits = ["apple", "banana"]


fruits.append("orange")
print(f"Добавленный orange: {fruits}")

fruits.insert(1,"grape")
print(f"Добавленный на 1 индекс grape: {fruits}")

fruits.remove("banana")
print(f"Удаленный banana: {fruits}")

fruits.sort()
print(f"Отсортированный список: {fruits}")

fruits.reverse()
print(f"Перевернутый список: {fruits}")