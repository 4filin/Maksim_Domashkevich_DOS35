
with open("test.txt", "w", encoding="utf-8") as file:
    file.write("Это тестовый файл")


with open("test.txt", "r", encoding="utf-8") as file:
    content = file.read()
    print("test.txt:")
    print(content)
    