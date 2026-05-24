#!/usr/bin/env bash
# Проверяем, что передан каталог
if [ -z "$1" ]; then
    echo "Каталог: $0 <папка>"
    exit 1
fi

for file in $(find "$1" -type f); do

    info=$(ls -l "$file")
    perms=$(echo "$info" | awk '{print $1}')
    size=$(echo "$info" | awk '{print $5}')

    echo "Файл: $file | Размер: $size байт | Права: $perms"
done