all: main.pdf

main.pdf: main.tex main.bib 
	pdflatex main.tex && pdflatex main.tex && bibtex main.bcf && pdflatex main.tex

clean:
	rm -rf *.out *.aux *.bcf *.log
