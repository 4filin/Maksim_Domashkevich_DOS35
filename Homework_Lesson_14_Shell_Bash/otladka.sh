#!/usr/bin/env bash
exec 5> debug_output.txt
BASH_XTRACEFD="5"
PS4='$LINENO: '
var="Привет мир!"
# печать
echo "$var"
# альтернативный способ печати
printf "%s\n" "$var"
echo "Мой дом - это: $HOME"