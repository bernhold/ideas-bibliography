MAIN=test-bib

SOURCES = $(MAIN).tex $(wildcard *.tex ) \
	$(wildcard *.bib)

$(MAIN).pdf: $(SOURCES) 
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

# for integration into LaTeX ides
pdf: $(MAIN).pdf

clean:
	rm -f *.log *.blg *.aux *.bbl

realclean:	clean
	rm -f $(MAIN).pdf
