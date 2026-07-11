import string

def count_chars(text):
    upper = sum(1 for ch in text if ch.isupper())
    lower = sum(1 for ch in text if ch.islower())
    digits = sum(1 for ch in text if ch.isdigit())
    punctuation = sum(1 for ch in text if ch in string.punctuation)
    return upper, lower, digits, punctuation


sample = "Hello, World! 123. How are you? ZZtop"
u, l, d, p = count_chars(sample)
print(f"Верхний регистр: {u}")
print(f"Нижний регистр: {l}")
print(f"Цифры: {d}")
print(f"Знаки пунктуации: {p}")