MAKEINDEX := makeindex
DVIPDF := dvipdfm
TEX = latex

.PHONY: all

SOURCE_FILES = $(wildcard *.tex ./figures/*ps)

thesis.pdf: Makefile $(SOURCE_FILES)
	$(MAKE) -C figures
	$(TEX) $(@:.pdf=.tex) | tee $(@:.pdf=.log.1) 2>&1
#	bibtex $(@:.pdf=)
	$(MAKEINDEX) $(@:.pdf=.nlo) -s nomencl.ist -o $(@:.pdf=.nls)
	$(TEX) $(@:.pdf=.tex) | tee $(@:.pdf=.log.2) 2>&1
	$(DVIPDF) $(@:.pdf=.dvi)

