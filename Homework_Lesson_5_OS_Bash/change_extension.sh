#!/usr/bin/env bash

# Переменные 
# $1 file name 
# $2 extension

file="$1"      
new_ext="$2"    

# Проверка ввода 
if [ "$#" -ne 2 ]; then
    echo "Ошибка: Недостаток параметров (имя файла и расширение)."
    exit 1
fi

# Проверяем наличия файла
if [ ! -f "$file" ]; then
    echo "Ошибка: Файл '$file' отсутствует."
    exit 1
fi

# Делаем новое имя файла  срасширением  
new_name="${file%.*}.$new_ext"

# Переименовываем файл
if mv "$file" "$new_name"; then
    echo "Файл '$file' переименован в '$new_name'"
else
    echo "Ошибка: Не удалось переименовать файл."
    exit 1
fi


