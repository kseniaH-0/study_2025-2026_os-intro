SRC = report.md
BIB = bib/cite.bib
PDF_ENGINE = xelatex

all: pdf docx

pdf:
	pandoc $(SRC) -o $(SRC:.md=.pdf) --pdf-engine=$(PDF_ENGINE) --bibliography=$(BIB)

docx:
	pandoc $(SRC) -o $(SRC:.md=.docx) --bibliography=$(BIB)

clean:
	rm -f *.pdf *.docx

.PHONY: all pdf docx clean
