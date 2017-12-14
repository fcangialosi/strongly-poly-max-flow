all: main.pdf

main.pdf: main.tex main.bib 
	pdflatex main && pdflatex main && biber main && pdflatex main

clean:
	rm -rf *.out *.aux *.bcf *.log *.xml main.pdf
