# Напишите программу, которая запрашивает у
# пользователя температуру в градусах Цельсия, переводит её в градусы
# Фаренгейта и выводит результат на экран.

def convert_to_fahrenheit (celcium_degree):
    return celcium_degree * 9/5 + 32

celcium_degree = float(input("Введите температуру в градусах Цельсия: "))
converted_to_fahrenheit = convert_to_fahrenheit(celcium_degree)
print(f"{celcium_degree}°C это {converted_to_fahrenheit}°F")