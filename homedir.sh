#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Ошибка: не указано имя пользователя"
	exit 1
fi

username=$1
user_entry=$(grep "^$username:" /etc/passwd)

if [ -z "$user_entry" ]; then
	echo "Ошибка: пользователь '$username' не найден"
	exit 1
else
	home_dir=$(echo "$user_entry" | cut -d: -f6)
	echo "Домашняя директория '$username': $home_dir"
fi

