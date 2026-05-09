#!/bin/bash

# Проверка аргументов
if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    echo "Использование: $0 <директория> [дней]"
    echo "  директория - каталог для архивации"
    echo "  дней - архивировать файлы изменённые за последние N дней (по умолчанию 7)"
    exit 1
fi

DIR="$1"
DAYS="${2:-7}"

# Проверка существования директории
if [ ! -d "$DIR" ]; then
    echo "Ошибка: директория $DIR не существует"
    exit 1
fi

# Имя архива с датой
ARCHIVE_NAME="backup_$(basename "$DIR")_$(date +%Y%m%d_%H%M%S).tar.gz"

# Поиск файлов, изменённых за последние DAYS дней
echo "Поиск файлов в $DIR, изменённых за последние $DAYS дней..."
FILES=$(find "$DIR" -type f -mtime -"$DAYS" -not -path "*/\.*")

if [ -z "$FILES" ]; then
    echo "Нет файлов, изменённых за последние $DAYS дней"
    exit 0
fi

# Архивация найденных файлов
echo "Архивирую найденные файлы..."
echo "$FILES" | tar -czf "$ARCHIVE_NAME" -T -

echo "Архив создан: $ARCHIVE_NAME"
echo "Размер архива: $(du -h "$ARCHIVE_NAME" | cut -f1)"
