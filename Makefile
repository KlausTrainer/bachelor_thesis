CLEAN_EXTENSIONS = aux,bbl,blg,lof,log,lot,nav,out,snm,toc,vrb

all:
	pdflatex ./bachelor_thesis.tex
	bibtex ./bachelor_thesis.aux
	pdflatex ./bachelor_thesis.tex
	pdflatex ./bachelor_thesis.tex

clean:
	bash -c "rm -rf *.{$(CLEAN_EXTENSIONS)}"
	bash -c "rm -rf content/*.{$(CLEAN_EXTENSIONS)}"
