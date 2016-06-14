MAIN=test-bib

SOURCES = $(MAIN).tex $(wildcard *.tex ) \
	$(wildcard ../bib/*.bib)

$(MAIN).pdf: $(SOURCES) 
	pdflatex $(MAIN)
	bibtex $(MAIN)1
	bibtex $(MAIN)2
	bibtex $(MAIN)3
	bibtex $(MAIN)4
	bibtex $(MAIN)5
	bibtex $(MAIN)6
#	bibtex $(MAIN)7
	pdflatex $(MAIN)
	pdflatex $(MAIN)

# for integration into LaTeX ides
pdf: $(MAIN).pdf

clean:
	rm -f *.log *.blg *.aux *.bbl

realclean:	clean
	rm -f $(MAIN).pdf
