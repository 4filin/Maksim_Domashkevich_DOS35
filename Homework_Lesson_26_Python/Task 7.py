a = "Components"
b = "network"
common_chars = ""

for char in a:

    if char in b and char not in common_chars:
        common_chars += char  

print("Общие символы:", common_chars)