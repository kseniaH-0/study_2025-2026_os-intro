# Makefile для лабораторной работы
# Автоматическая конвертация Markdown в PDF и DOCX

# Имя исходного файла (если называется не report.md — замени)
SRC = report.md

# Путь к библиографии
BIB = bib/cite.bib

# Движок для PDF
PDF_ENGINE = xelatex

# Сборка всего
all: pdf docx

# Сборка PDF
pdf:
	pandoc $(SRC) -o $(SRC:.md=.pdf) --pdf-engine=$(PDF_ENGINE) --bibliography=$(BIB)

# Сборка DOCX
docx:
	pandoc $(SRC) -o $(SRC:.md=.docx) --bibliography=$(BIB)

# Очистка сгенерированных файлов
clean:
	rm -f *.pdf *.docx

# Чтобы make не путался с файлами
.PHONY: all pdf docx clean
