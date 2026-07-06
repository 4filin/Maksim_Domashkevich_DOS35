import os

current_dir = os.path.dirname(os.path.abspath(__file__))

folder = input(str("name: "))

folder_path = os.path.join(current_dir, folder)

if not os.path.isdir(folder):
    os.mkdir(folder)
    os.chdir(folder)
else:
    folder = input(str("Add another name: "))

for filename in ["file1.txt", "file2.txt", "file3.txt"]:
    open(filename, "w").close()

files = os.listdir(".")
print("Список файлов в директории mydir:")
for f in files:
    print(f)

