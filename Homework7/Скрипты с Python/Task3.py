# Задача 3: Угадай число
# Задание: Напишите простую игру. Программа "загадывает" число от 1 до 10.
# Пользователь должен угадать это число. Цикл while должен продолжаться до тех пор,
# пока пользователь не введет правильный ответ.

def guess_number_func (secret_number):
    while True:
        input_number = int(input("Введите число от 1 до 10: "))

        if secret_number != input_number:
            print ("Неверно, попробуйте еще раз.")
        else:
            print("Поздравляю вы угадали число!")
            break

secret_number = 7
guess_number_func(secret_number)


        
