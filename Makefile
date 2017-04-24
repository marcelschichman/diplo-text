all: main.pdf

main.pdf: main.tex *.tex *.bib images/*
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm main.pdf
	rm *.bbl
	rm *.blg
	rm *.toc
	rm *.aux
	rm *.log