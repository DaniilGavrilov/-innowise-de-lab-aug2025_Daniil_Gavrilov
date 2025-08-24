# Цель: Закрепить знания input(), print(), основных операций с числами,
# конструкции if-else, приведение типов. Научиться самостоятельно
# декомпозировать и решать задачу.


def calculate_func(operator,first_number,second_number): #Вычислиет
     if (operator == "+"):
        return f"{first_number} + {second_number} = {first_number + second_number}"

     elif (operator == "-"):
        return f"{first_number} - {second_number} = {first_number - second_number}"

     elif (operator == "*"):
        return f"{first_number} * {second_number} = {first_number * second_number}"

     elif (operator == "/"):
        return f"{first_number} / {second_number} = {first_number / second_number}"

def input_operator_func(some_str): #Проверяет ввод символа операции
    while True:
        operator_choice = input(some_str)

        if operator_choice == "+" or operator_choice == "-" or operator_choice == "*" or operator_choice == "/":
            return operator_choice

        else:
            print("Неверное значение. Попробуйте снова)")

def input_number_func(some_str): #Проверяет ввод числа
    while True:
        try:
            input_number = float(input(some_str)) #Преобразование
            return input_number
        except:
            print("Неверное значение. Попробуйте снова)") #Если не получилось, то...

def run_calculator(): #Сам калькулятор
    while True:
        first_number = input_number_func("Введите первое число: ")
        second_number = input_number_func("Введите второе число: ")
        operator_choice = input_operator_func("Выберите оператор (+, -, *, /): ")
        result = calculate_func(operator_choice,first_number,second_number)
        print(f"Результат: {result}")
        user_input = input("Продолжить (Да/Нет): ")

        if (user_input == "Да"):
            continue

        elif (user_input == "Нет"):
            break

run_calculator()