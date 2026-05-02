#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Использование: $0 <расширение> <директория>"
    exit 1
fi

EXT="$1"
DIR="$2"

if [ ! -d "$DIR" ]; then
    echo "Ошибка: директория $DIR не существует"
    exit 1
fi

COUNT=$(find "$DIR" -maxdepth 1 -type f -name "*$EXT" | wc -l)
echo "В директории $DIR найдено $COUNT файлов с расширением $EXT"
