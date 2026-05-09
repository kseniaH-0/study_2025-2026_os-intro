#!/bin/bash

# Инициализация переменных
input_file=""
output_file=""
pattern=""
case_sensitive=""
show_numbers=""
use_regex=""

# Разбор аргументов командной строки
while getopts "i:o:p:Cnrg" opt; do
    case $opt in
        i) input_file="$OPTARG" ;;
        o) output_file="$OPTARG" ;;
        p) pattern="$OPTARG" ;;
        C) case_sensitive="-i" ;;  # -i в grep означает ignore case
        n) show_numbers="-n" ;;
        r) use_regex="-E" ;;
        g) use_regex="-G" ;;
        *) 
            echo "Использование: $0 -i input_file -o output_file -p pattern [-C] [-n] [-r|-g]"
            exit 1
            ;;
    esac
done

# Проверка обязательных параметров
if [ -z "$input_file" ] || [ -z "$pattern" ]; then
    echo "Ошибка: необходимо указать -i input_file и -p pattern"
    echo "Использование: $0 -i input_file -o output_file -p pattern [-C] [-n] [-r|-g]"
    exit 1
fi

# Проверка существования входного файла
if [ ! -f "$input_file" ]; then
    echo "Ошибка: файл $input_file не существует"
    exit 1
fi

# Формирование команды grep
grep_cmd="grep $case_sensitive $show_numbers $use_regex"

# Выполнение поиска
if [ -n "$output_file" ]; then
    $grep_cmd "$pattern" "$input_file" > "$output_file"
    echo "Результат сохранён в $output_file"
else
    $grep_cmd "$pattern" "$input_file"
fi

