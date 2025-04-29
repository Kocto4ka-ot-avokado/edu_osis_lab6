#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Ошибка:Не найдено"
	exit 1

fi

dir=$1

if [ -d "$dir" ]; then
	echo "Директория '$dir' уже существует"
else
	mkdir_output=$(mkdir -p "$dir" 2>&1)
	if [ $? -eq 0 ]; then
		echo "Директория '$dir' создана"
	else
		echo "Ошибка при создании '$dir': $mkdir_output"
		exit 1
	fi
fi

