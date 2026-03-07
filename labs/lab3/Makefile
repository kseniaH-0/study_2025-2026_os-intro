SRC = report.md
BIB = bib/cite.bib

all: pdf docx

pdf:
	pandoc $(SRC) -o $(SRC:.md=.pdf) --pdf-engine=xelatex --bibliography=$(BIB)

docx:
	pandoc $(SRC) -o $(SRC:.md=.docx) --bibliography=$(BIB)

clean:
	rm -f *.pdf *.docx
