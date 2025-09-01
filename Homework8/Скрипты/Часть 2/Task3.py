# Упражнение 3 (Опционально)
# ● Создайте функцию calculate_average_score(), которая будет вычислять
# средний балл.
# ● Функция должна принимать список оценок scores как обязательный аргумент.
# ● Добавьте опциональный булевый параметр ignore_lowest со значением по
# умолчанию False.
# ● Если ignore_lowest равен True, функция должна отбросить наименьшую оценку
# перед вычислением среднего. Если в списке всего одна оценка, отбрасывать её не
# нужно.
# ● Используя цикл, пройдитесь по списку student_data. 2 раза, первый раз
# учитывая все оценки, а второй раз отбросив худшие оценки

def calculate_average_score(scores,ignore_lowest = False):
    if ignore_lowest == True and len(scores) > 1:
        scores.remove(min(scores))

    return sum(scores)/len(scores)

student_data = [
    {'name': 'Алексей', 'scores': [85, 92, 78, 95]},
    {'name': 'Марина', 'scores': [65, 70, 58, 82]},
    {'name': 'Светлана', 'scores': [98, 95, 100]},
    {'name': 'Петр', 'scores': [12]}
]

print("С учётом всех оценок: ")
for i in range(len(student_data)):
    print(f"{calculate_average_score(student_data[i]["scores"]):.2f}")

print("Отбросив худшие: ")
for i in range(len(student_data)):
    print(f"{calculate_average_score(student_data[i]["scores"],True):.2f}")





