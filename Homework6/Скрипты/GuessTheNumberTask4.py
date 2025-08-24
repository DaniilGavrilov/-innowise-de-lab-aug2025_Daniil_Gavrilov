# Напишите программу, которая «загадывает»
# случайное целое число в диапазоне от 1 до 5. Пользователь пытается его
# отгадать. Программа должна сравнить число пользователя с загаданным
# и вывести одно из трех сообщений:
# ● «Ты угадал!», если числа совпали.
# ● «Слишком много!», если число пользователя больше загаданного.
# ● «Слишком мало!», если число пользователя меньше загаданного.

from random import randint

def guess_number_func(number_to_guess,input_number):

    if (number_to_guess == input_number):
        print("Ты угадал!")

    elif (number_to_guess > input_number):
        print("Слишком много!")

    else:
        print("Слишком мало!")

number_to_guess = randint(1,5)
print("Я загадал число от 1 до 5. Попробуй отгадать!")
input_number = int(input("Введите число: "))
guess_number_func(number_to_guess,input_number)




