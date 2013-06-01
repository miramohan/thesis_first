
.PHONY: all

SOURCE_FILES = $(wildcard *.tex ./figures/*ps)

thesis.pdf: Makefile $(SOURCE_FILES)
	echo $(TEX) $(@:.pdf=.tex)
	echo $(TEX) $(@:.pdf=.tex)
	dvipdf $(@:.pdf=.dvi)

