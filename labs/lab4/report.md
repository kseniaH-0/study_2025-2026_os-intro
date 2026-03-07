---
autor: Хрисанова Ксения Олеговна
title: "Лабораторная работа №4"
subtitle: "Продвинутое использование git."
institute: Российский универститет дружбы народов, Москва
date: 7 марта,2026

lang: ru-Ru
toc-title: Содержание

## Bibliography
Bibliography: bib/cite.bib

##Pdf output format
toc: true
toc-depth: 2
lof: true
lot: true
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt

##I18n polyglossia

polyglossia-lang:
  name: russian
  options:
    - spelling=modern
    - babelshorthands=true
polyglossia-otherlangs:
  name: english

## I18n babel
babel-lang: russian
babel-otherlangs: english

## fonts
mainfont: "Liberation Serif"
romanfont: "Liberation Serif"
sansfont: "Liberation Sans"
monofont: "Liberation Mono"
mathfont: "Liberation Serif"
mainfontoptions: Scale=0.94
romanfontoptions: Scale=0.94
sansfontoptions: Scale=0.94
monofontoptions: Scale=0.94
mathfontoptions: Scale=0.94

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

# Цель работы

Получение навыков продвинутой работы с репозиториями git и релизами.

# Задание

1. Выполнить работу для тестового репозитория.
2. Преобразовать рабочий репозиторий в репозиторий с git-flow и conventional commits.

# Теоретическое введение

- Gitflow Workflow опубликована и популяризована Винсентом Дриссеном.

- Gitflow Workflow предполагает выстраивание строгой модели ветвления с учётом выпуска проекта.

- Данная модель отлично подходит для организации рабочего процесса на основе релизов.

- Работа по модели Gitflow включает создание отдельной ветки для исправлений ошибок в рабочей среде.

- Последовательность действий при работе по модели Gitflow:

- Из ветки master создаётся ветка develop.

- Из ветки develop создаётся ветка release.

- Из ветки develop создаются ветки feature.

- Когда работа над веткой feature завершена, она сливается с веткой develop.

- Когда работа над веткой релиза release завершена, она сливается в ветки develop и master.

- Если в master обнаружена проблема, из master создаётся ветка hotfix.

- Когда работа над веткой исправления hotfix завершена, она сливается в ветки develop и master.

## Выполнение лабораторной работы

Устанавливаю nodejs, пакетный менеджер для него pnpm и gitflow. (рис. @fig-01)

![Установка необходимого ПО](images/01.png){#fig-01 widht=70%}

Устаналиваю через pnpm commitizen и standard-changelog. (рис. @fig-02)

![Установка через pnpm](images/02.png){#fig-02 width=70%}

Создаю новый репозиторий и делаю там первый коммит. (рис. @fig-03)

![Создание репозитория](images/03.png){#fig-03 width=70%}

Инициализирую и конфигурирую общепринятые коммиты в созданной директории через редактирование package.json. (рис. @fig-08)

![Конфигурация package.json](images/08.png){#fig-08 width=70%}

Делаю снимок измененний, создаю коммит и отправляю на удаленный репозиторий. (рис. @fig-04)

![Отправление коммита на GitHub](images/04.png){#fig-04 width=70%}

Инициализирую в репозитории git flow и создаю 1 релиз в только что созданной ветке develop. (рис. @fig-05)

![Использование git-flow](images/05.png){#fig-05 width=70%}

Создаю список изменений через standard changelog, заканчиваю релиз и выгружаю на удаленный репозиторий изменения. (рис. @fig-06)

![Загрузка релиза на github](images/06.png){#fig-06 width=70%}

Инициализирую ветку feature для работы над новой функциональностью, готовлю релиз и загружаю на github. (рис. @fig-07)

![Работа с новой веткой и загрузка релиза](images/07.png){#fig-07 width=70%}

# Выводы

В ходе работы освоена работа с Gitflow, семантическим версионированием и Conventional Commits. Созданы feature-ветки, релизы и сгенерирован changelog. Полученные навыки позволяют вести структурированную разработку и автоматизировать выпуск версий проекта.Работа выполнена в соответсвии с методическими указаниями[@lab4].

# Список литературы{.unnumbered}

::: {#refs}
:::

