


all: manuscript_R

manuscript_R:
	mkdir -p reports
	cd manuscript_Rmd; Rscript compile.R
	cp manuscript_Rmd/manuscript.pdf reports/
