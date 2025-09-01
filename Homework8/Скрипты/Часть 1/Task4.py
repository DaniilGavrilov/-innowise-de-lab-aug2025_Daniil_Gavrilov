#Упражнение 4: List comprehension и словари
# Дано: words = ["hello", "world", "python", "code"]
# 1. Создать список длин слов, используя списковое включение
# 2. Создать список слов длиннее 4 символов
# 3. Создать словарь: {слово: длина} для всех слов

words = ["hello","world","python","code"]

words_lengths = [len(w) for w in words]
print(f"Длины слов: {words_lengths}")

words_longer_four_chars = [w for w in words if len(w) > 4]
print(f"Слова длинне 4 символов: {words_longer_four_chars}")

words_dict = dict(zip(words,words_lengths)) #Zip чтобы не добавлять вручную
print(f"Словарь для слов (слово: длина): {words_dict}")






