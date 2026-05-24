#!/usr/bin/env bash


if [ -z "$1" ]; then
    echo "Ошибка: не указан каталог."
    echo "Использование: $0 <каталог>"
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "Ошибка: каталог '$1' не существует."
    exit 1
fi

cd "$1"


for f in *.log; do
    mv "$f" "${f%.*}_$(date +"%Y_%m_%d_%H_%M").log"
done


for f in *.py; do
    mv "$f" "${f%.*}_$(git log -1 --format=%H).py"
done