# Упражнение 1: Операции со строкой
# Дана строка: "Python Programming"
# Напишите код, который:
# 1. Выводит длину строки
# 2. Выводит символ по индексу 7
# 3. Выводит последние 3 символа
# 4. Проверяет, содержится ли в строке подстрока "gram"

text = "Python Programming"

def last_symbols (text,number_of_symbols):
    return_string = ""
    while number_of_symbols != 0:
        return_string += text[-number_of_symbols] + " "
        number_of_symbols -= 1
    return return_string

def is_sub(text,sub = "gram"): 
    if text.find(sub) == -1:
        return "нет"
    else:
        return "да"

print(f"Длина строки: {len(text)}")
print(f"Символ по индексу 7: {text[7]} ")
print(f"Последние 3 символа: {last_symbols(text,3)}")
print(f"Содержится ли подстрока gram: {is_sub(text)}")


