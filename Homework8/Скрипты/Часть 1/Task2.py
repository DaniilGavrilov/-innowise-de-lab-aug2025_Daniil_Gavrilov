# Упражнение 2: Методы строк и форматинг
# Дано: email = " USER@DOMAIN.COM "
# 1. Очистить и отформатировать до вида: "user@domain.com"
# 2. Разделить на имя пользователя и домен
# 3. Используя f-строку, создать: "Username: user, Domain:
# domain.com"

email = " USER@DOMAIN.COM "

print(f"{email.strip().lower()}")
username = "user"
domain = "domain.com"
print(f"Username: {username}, Domain: {domain}")



