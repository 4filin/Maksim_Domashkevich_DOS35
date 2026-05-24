#!/usr/bin/env bash

# Проверка ввода параметров

if [ $# -eq 0 ]; then
    echo "Использование: $0 [аргументы...]"
    exit 1 
fi 


FILE="arguments.txt"
printf '%s\n' "$@" | tee "$FILE"

echo "Аргументы сохранены в файл: $FILE"
