---
autor: Хрисанова Ксения Олеговна
title: "Лабораторная работа №4"
subtitle: "Продвинутое использование Git"
institute: Российский универститет дружбы народов, Москва
date: 7 марта, 2026

lang: ru-Ru
toc: false
slide_level: 2
aspectratio: 169
section-titles: true

mainfont: "Liberation Serif"
sansfont: "Liberation Sans"
monofont: "Liberation Mono"
#mainfontoptions: Scale=0.94
#romanfontoptions: Scale=0.94
#sansfontoptions: Scale=0.94
#monofontoptions: Scale=0.94
#mathfontoptions: Scale=0.94


##Pandoc crossref LaTex customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"

## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float}
  - \floatplacement{figure}{H}
---

## Цель работы

Получение навыков продвинутой работы с репозиториями git и релизами.

##  Задание

1. Выполнить работу для тестового репозитория.
2. Преобразовать рабочий репозиторий в репозиторий с git-flow и conventional commits.

## Выполнение лабораторной работы

### Устанавливаю nodejs, пакетный менеджер для него pnpm и gitflow.

![Установка необходимого ПО](images/01.png){#fig-01 widht=70%}

## Устаналиваю через pnpm commitizen и standard-changelog. 

![Установка через pnpm](images/02.png){#fig-02 width=70%}

## Создаю новый репозиторий и делаю там первый коммит.

![Создание репозитория](images/03.png){#fig-03 width=70%}

## Инициализирую и конфигурирую общепринятые коммиты в созданной директории через редактирование package.json. 

![Конфигурация package.json](images/08.png){#fig-08 width=70%}

## Делаю снимок измененний, создаю коммит и отправляю на удаленный репозиторий. 

![Отправление коммита на GitHub](images/04.png){#fig-04 width=70%}

## Инициализирую в репозитории git flow и создаю 1 релиз в только что созданной ветке develop.

![Использование git-flow](images/05.png){#fig-05 width=70%}

## Создаю список изменений через standard changelog, заканчиваю релиз и выгружаю на удаленный репозиторий изменения.

![Загрузка релиза на github](images/06.png){#fig-06 width=70%}

## Инициализирую ветку feature для работы над новой функциональностью, готовлю релиз и загружаю на github.

![Работа с новой веткой и загрузка релиза](images/07.png){#fig-07 width=70%}

## Выводы

В ходе работы освоена работа с Gitflow, семантическим версионированием и Conventional Commits. Созданы feature-ветки, релизы и сгенерирован changelog. Полученные навыки позволяют вести структурированную разработку и автоматизировать выпуск версий проекта.


