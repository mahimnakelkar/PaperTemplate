PROJECT_NAME="main"

.DEFAULT_GOAL := pdf

full: 
	pdflatex ${PROJECT_NAME}
	bibtex ${PROJECT_NAME}||true
	pdflatex ${PROJECT_NAME}
	pdflatex ${PROJECT_NAME}

pdf:
	pdflatex ${PROJECT_NAME}

clean_all: clean
	rm -f ${PROJECT_NAME}-blx.bib 
clean:
	rm -f ${PROJECT_NAME}.{ps,pdf,log,aux,out,dvi,bbl,blg,run.xml,toc,bcf}
