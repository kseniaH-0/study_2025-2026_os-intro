#!/bin/bash
DIR="${1:-.}"

if [ ! -d "$DIR" ]; then
    echo "Ошибка: каталог $DIR не существует"
    exit 1
fi

echo "Содержимое каталога: $DIR"
echo "=============================="

for file in "$DIR"/*; do
    if [ -e "$file" ]; then
        perms=""
        [ -r "$file" ] && perms="${perms}r" || perms="${perms}-"
        [ -w "$file" ] && perms="${perms}w" || perms="${perms}-"
        [ -x "$file" ] && perms="${perms}x" || perms="${perms}-"
        
        if [ -d "$file" ]; then
            type="[DIR]"
        elif [ -f "$file" ]; then
            type="[FILE]"
        else
            type="[OTHER]"
        fi
        
        filename=$(basename "$file")
        echo "$perms $type $filename"
    fi
done
