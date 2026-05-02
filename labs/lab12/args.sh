#!/bin/bash
echo "Количество аргументов:$#"
echo "Все аргументы: $@"
echo "Перебираем все аргументы:"
for arg in "$@"
do
	echo "Аргумент:$arg"
done

