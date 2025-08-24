# Напишите программу, которая запрашивает у
# пользователя целое число и определяет, является ли оно чётным или
# нечётным.

def even_odd_func (input_number):

    if (input_number % 2 == 0):
        print(f"Число {input_number} - чётное")

    else:
        print(f"Число {input_number} - нечётное")

input_number = int(input("Введите целое число: "))
even_odd_func(input_number)
