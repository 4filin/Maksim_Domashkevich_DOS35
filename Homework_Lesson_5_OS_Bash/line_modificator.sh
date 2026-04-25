#!/usr/bin/env bash
# Аргументы
# string="$1"
# start="$2"
# end="$3"


# Проверка количества аргументов

if [ "$#" -lt 4 ] || [ "$#" -gt 5 ]; then
    echo "Hедостаток параметров (строка, начало, конец, --mod(extr/dell))."
    exit 1
fi

string="$1"
start="$2"
end="$3"


# Проверка флага
if [ "$4" != "--del" ] && [ "$4" != "--extr" ]; then
    echo "Неверный флаг. Используйте --del или --extr."
    exit 1
fi

# Убираем '--' для получения 'del' или 'extr'
mod="${4#--}"  

# Проверка диапазона
if ! [[ "$start" =~ ^[0-9]+$ ]] || ! [[ "$end" =~ ^[0-9]+$ ]] || [ "$start" -gt "$end" ] || [ "$end" -gt "${#string}" ]; then
    echo "Значения вне диапалона количества символов."
    exit 1
fi

# Подстрока
if [ "$mod" == "extr" ]; then
    substring=$(echo "$string" | cut -c "$start"-"$end")
    echo "Подстрока: $substring"
fi    
# Удаление
if [ "$mod" == "del" ]; then
    if [ "$start" -eq 1 ]; then
        after=$(echo "$string" | cut -c "$((end + 1))"-)
        echo "$after"
    else
        before=$(echo "$string" | cut -c -"$((start - 1))")
        after=$(echo "$string" | cut -c "$((end + 1))"-)
        result="$before$after"
        echo "$result"
    fi
fi