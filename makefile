BASE    = main.tex
LATEX	= pdflatex -output-format pdf
SOURCES	= $(wildcard *.tex)
BIBS	= $(wildcard *.bib)

all: pdf

pdf: $(BASE:%.tex=%.pdf)

%.pdf: $(SOURCES) $(FIGURES)
	$(LATEX) $*.tex
	-bibtex $*
	$(LATEX) $*.tex
	$(LATEX) $*.tex
