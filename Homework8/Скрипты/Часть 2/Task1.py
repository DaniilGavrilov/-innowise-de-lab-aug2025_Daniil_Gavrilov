# Упражнение 1: Функции без параметров
# # Создайте функцию без параметров show_current_time() — печатает
# текущие дату и время (используйте модуль datetime).

from datetime import datetime

def show_current_time():
    current_datetime = datetime.now().replace(microsecond=0) #Replace убирает миллисекунды
    print(current_datetime)

show_current_time()


