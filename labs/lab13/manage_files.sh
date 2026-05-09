#!/bin/bash

# Проверка аргументов
if [ $# -ne 2 ]; then
    echo "Использование: $0 <create|delete> <N>"
    echo "  create N - создать N файлов (1.tmp, 2.tmp, ...)"
    echo "  delete N - удалить файлы (1.tmp, 2.tmp, ...)"
    exit 1
fi

action="$1"
N="$2"

# Проверка, что N - число
if ! [[ "$N" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: N должно быть числом"
    exit 1
fi

case "$action" in
    create)
        for i in $(seq 1 $N); do
            touch "$i.tmp"
            echo "Создан файл: $i.tmp"
        done
        echo "Создано $N файлов"
        ;;
    delete)
        for i in $(seq 1 $N); do
            if [ -f "$i.tmp" ]; then
                rm "$i.tmp"
                echo "Удалён файл: $i.tmp"
            else
                echo "Файл $i.tmp не существует"
            fi
        done
        echo "Удаление завершено"
        ;;
    *)
        echo "Ошибка: действие должно быть create или delete"
        exit 1
        ;;
esac
