all: main.pdf

main.pdf: main.tex *.tex *.bib images/*
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm main.pdf -f
	rm *.bbl -f
	rm *.blg -f
	rm *.toc -f
	rm *.aux -f
	rm *.log -f