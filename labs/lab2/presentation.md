---
autor: Хрисанова Ксения Олеговна
title: "Лабораторная работа №2"
subtitle: "Системы контроля версий Git"
institute: Российский универститет дружбы народов, Москва
date: 4 марта,2026

lang: ru-Ru
toc: false
slide_level: 2
aspectratio: 169
section-titles: true

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

## Цель работы 
Изучить идеологию и применение средств контроля версий. Освоить умения по работе с git.

## Задание
1. Создать базовую конфигурацию для работы с git.
2. Создать ключи SSH и PGP.
3. Настроить подписи коммитов.
4. Зарегистрироваться на GitHub.
5. Создать локальный каталог для выполнения заданий по предмету.


## Теоретическое введение

Системы контроля версий (VCS) позволяют отслеживать изменения в файлах, работать над проектами совместно и возвращаться к предыдущим версиям. Git — распределённая система контроля версий, которая хранит историю изменений локально и может синхронизироваться с удалёнными репозиториями.

Основные команды Git:
- `git init` — инициализация репозитория
- `git add` — добавление файлов в индекс
- `git commit` — сохранение изменений
- `git push` — отправка изменений на сервер
- `git pull` — получение изменений с сервера

## Выполнение лабораторной работы

### Установка и настройка Git

![Установка Git](images/01.PNG){#fig-01 width=70%}
![Настройки Git](images/02.png){#fig-02 width=70%}

## Создние ключей

![Создание SSH-ключей rsa и ed25519](images/03.png){#fig-03 width=50%}
![Создание PGP ключa](images/04.png){#fig-04 width=70%}

## Добавиление ключей в настройках GitHub

![Публичный SSH-ключ для добавления на GitHub](images/05.png){#fig-05 width=70%}
![Экспорт PGP-ключа](images/06.png){#fig-06 width=70%}

## Настройка и авторизация

![Настройка подписи коммитов](images/07.png){#fig-07 width=70%}
![Aвторизация gh](images/08.png){#fig-08 width=70%}

## Создание структуры и каталогов

![Cоздание структуры каталогов](images/09.png){#fig-09 width=70%}
![Cоздание структуры каталогов](images/10.png){#fig-10 width=70%}

## Настройка рабочей директории

![Клонирование репозитория](images/11.png){#fig-11 width=70%}
![НастройКа рабочей директории ](images/12.png){#fig-12 width=70%}
![Отправка изменений на GitHub ](images/13.png){#fig-13 width=70%}


## Вывод

В ходе выполнения лабораторной работы были изучены основные принципы работы систем контроля версий и получены практические навыки работы с Git. Выполнена базовая настройка Git, созданы SSH и PGP ключи, добавлены в настройки GitHub, настроена подпись коммитов. Освоена работа с GitHub CLI, создан репозиторий из шаблона и подготовлена структура каталогов. Цель работы достигнута.
