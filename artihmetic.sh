#!/bin/bash

if [ $# -ne 3]; then
	echo "Ошибка: необходимо 3 аргумента"
	exit 1
fi

num1=$1
num2=$2
oper=$3

case "$oper" in
	+)
echo "Результат: $(($num1 + $num2))"
;;
-)
	echo "Результат: $(($num1 - $num2))"
	;;
\*)
	echo "Результат: $(($num1 * $num2))"
	;;
/)
	if [ "$num2" -eq 0 ]; then
echo "Ошибка: деление на 0 невозможно"

else
	echo "Результат: $(($num1 / $num2))"
fi
;;
*)
	echo "Ошибка: неизвестная операция."
;;
esac
